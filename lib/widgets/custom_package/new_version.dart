import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'package:collection/collection.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

/// Information about the app's current version, and the most recent version
/// available in the Apple App Store or Google Play Store.
class VersionStatus {
  /// The current version of the app.
  final String localVersion;

  /// The most recent version of the app in the store.
  final String storeVersion;

  /// A link to the app store page where the app can be updated.
  final String appStoreLink;

  /// The release notes for the store version of the app.
  final String? releaseNotes;

  /// True if the there is a more recent version of the app in the store.
  // bool get canUpdate => localVersion.compareTo(storeVersion).isNegative;
  // version strings can be of the form xx.yy.zz (build)
  bool get canUpdate {
    // assume version strings can be of the form xx.yy.zz
    // this implementation correctly compares local 1.10.1 to store 1.9.4
    try {
      final localFields = localVersion.split('.');
      final storeFields = storeVersion.split('.');
      String localPad = '';
      String storePad = '';
      for (int i = 0; i < storeFields.length; i++) {
        localPad = localPad + localFields[i].padLeft(3, '0');
        storePad = storePad + storeFields[i].padLeft(3, '0');
      }
      // print('new_version canUpdate local $localPad store $storePad');
      if (localPad.compareTo(storePad) < 0)
        return true;
      else
        return false;
    } catch (e) {
      return localVersion.compareTo(storeVersion).isNegative;
    }
  }

  VersionStatus._({
    required this.localVersion,
    required this.storeVersion,
    required this.appStoreLink,
    this.releaseNotes,
  });
}

class NewVersion {
  /// An optional value that can override the default packageName when
  /// attempting to reach the Apple App Store. This is useful if your app has
  /// a different package name in the App Store.
  final String? iOSId;

  /// An optional value that can override the default packageName when
  /// attempting to reach the Google Play Store. This is useful if your app has
  /// a different package name in the Play Store.
  final String? androidId;

  /// Only affects iOS App Store lookup: The two-letter country code for the store you want to search.
  /// Provide a value here if your app is only available outside the US.
  /// For example: US. The default is US.
  /// See http://en.wikipedia.org/wiki/ ISO_3166-1_alpha-2 for a list of ISO Country Codes.
  final String? iOSAppStoreCountry;

  NewVersion({
    this.androidId,
    this.iOSId,
    this.iOSAppStoreCountry,
  });

  /// This checks the version status, then displays a platform-specific alert
  /// with buttons to dismiss the update alert, or go to the app store.
  showAlertIfNecessary({required BuildContext context}) async {
    final VersionStatus? versionStatus = await getVersionStatus();
    if (versionStatus != null && versionStatus.canUpdate) {
      showUpdateDialog(context: context, versionStatus: versionStatus);
    }
  }

  /// This checks the version status and returns the information. This is useful
  /// if you want to display a custom alert, or use the information in a different
  /// way.
  Future<VersionStatus?> getVersionStatus() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (Platform.isIOS) {
      return _getiOSStoreVersion(packageInfo);
    } else if (Platform.isAndroid) {
      return _getAndroidStoreVersion(packageInfo);
    } else {
      debugPrint(
          'The target platform "${Platform.operatingSystem}" is not yet supported by this package.');
    }
  }

  /// iOS info is fetched by using the iTunes lookup API, which returns a
  /// JSON document.
  Future<VersionStatus?> _getiOSStoreVersion(PackageInfo packageInfo) async {
    final id = iOSId ?? packageInfo.packageName;
    final parameters = {"bundleId": "$id"};
    if (iOSAppStoreCountry != null) {
      parameters.addAll({"country": iOSAppStoreCountry!});
    }
    var uri = Uri.https("itunes.apple.com", "/lookup", parameters);
    final response = await http.get(uri);
    if (response.statusCode != 200) {
      debugPrint('Can\'t find an app in the App Store with the id: $id');
      return null;
    }
    final jsonObj = json.decode(response.body);
    return VersionStatus._(
      localVersion: packageInfo.version,
      storeVersion: jsonObj['results'][0]['version'],
      appStoreLink: jsonObj['results'][0]['trackViewUrl'],
      releaseNotes: jsonObj['results'][0]['releaseNotes'],
    );
  }

  /// Android info is fetched by parsing the html of the app store page.
  Future<VersionStatus?> _getAndroidStoreVersion(
      PackageInfo packageInfo) async {
    final id = androidId ?? packageInfo.packageName;
    final uri =
        Uri.https("play.google.com", "/store/apps/details", {"id": "$id"});
    final response = await http.get(uri);
    if (response.statusCode != 200) {
      debugPrint('Can\'t find an app in the Play Store with the id: $id');
      return null;
    }
    final document = parse(response.body);

    final additionalInfoElements = document.getElementsByClassName('hAyfc');
    final versionElement = additionalInfoElements.firstWhere(
      (elm) => elm.querySelector('.BgcNfc')!.text == 'Current Version',
    );
    final storeVersion = versionElement.querySelector('.htlgb')!.text;

    final sectionElements = document.getElementsByClassName('W4P4ne');
    final releaseNotesElement = sectionElements.firstWhereOrNull(
      (elm) => elm.querySelector('.wSaTQd')!.text == 'What\'s New',
    );
    final releaseNotes = releaseNotesElement
        ?.querySelector('.PHBdkd')
        ?.querySelector('.DWPxHb')
        ?.text;

    return VersionStatus._(
      localVersion: packageInfo.version,
      storeVersion: storeVersion,
      appStoreLink: uri.toString(),
      releaseNotes: releaseNotes,
    );
  }

  /// Shows the user a platform-specific alert about the app update. The user
  /// can dismiss the alert or proceed to the app store.
  ///
  /// To change the appearance and behavior of the update dialog, you can
  /// optionally provide [dialogTitle], [dialogText], [updateButtonText],
  /// [dismissButtonText], and [dismissAction] parameters.
  void showUpdateDialog({
    required BuildContext context,
    required VersionStatus versionStatus,
    String dialogTitle = 'Update Available',
    String? dialogText,
    String updateButtonText = 'Update',
    bool allowDismissal = true,
    String dismissButtonText = 'Maybe Later',
    VoidCallback? dismissAction,
  }) async {
    final dialogTitleWidget = Text(dialogTitle);
    final dialogTextWidget = Text(
      dialogText ??
          'You can now update this app from ${versionStatus.localVersion} to ${versionStatus.storeVersion}',
    );

    final updateButtonTextWidget = Text(updateButtonText);
    final updateAction = () {
      _launchAppStore(versionStatus.appStoreLink);
      if (allowDismissal) {
        Navigator.of(context, rootNavigator: true).pop();
      }
    };

    List<Widget> actions = [
      Platform.isAndroid
          ? TextButton(
              child: updateButtonTextWidget,
              onPressed: updateAction,
            )
          : CupertinoDialogAction(
              child: updateButtonTextWidget,
              onPressed: updateAction,
            ),
    ];

    if (allowDismissal) {
      final dismissButtonTextWidget = Text(dismissButtonText);
      dismissAction = dismissAction ??
          () => Navigator.of(context, rootNavigator: true).pop();
      actions.add(
        Platform.isAndroid
            ? TextButton(
                child: dismissButtonTextWidget,
                onPressed: dismissAction,
              )
            : CupertinoDialogAction(
                child: dismissButtonTextWidget,
                onPressed: dismissAction,
              ),
      );
    }

    showDialog(
      context: context,
      barrierDismissible: allowDismissal,
      builder: (BuildContext context) {
        return WillPopScope(
            child: Platform.isAndroid
                ? AlertDialog(
                    title: dialogTitleWidget,
                    content: dialogTextWidget,
                    actions: actions,
                  )
                : CupertinoAlertDialog(
                    title: dialogTitleWidget,
                    content: dialogTextWidget,
                    actions: actions,
                  ),
            onWillPop: () => Future.value(allowDismissal));
      },
    );
  }

  /// Launches the Apple App Store or Google Play Store page for the app.
  void _launchAppStore(String appStoreLink) async {
    debugPrint(appStoreLink);
    if (await canLaunch(appStoreLink)) {
      await launch(appStoreLink);
    } else {
      throw 'Could not launch appStoreLink';
    }
  }
}

/// Provides immutable storage and comparison of semantic version numbers.
class Version implements Comparable<Version> {
  static final RegExp _versionRegex =
      RegExp(r"^([\d.]+)(-([0-9A-Za-z\-.]+))?(\+([0-9A-Za-z\-.]+))?$");
  static final RegExp _buildRegex = RegExp(r"^[0-9A-Za-z\-.]+$");
  static final RegExp _preReleaseRegex = RegExp(r"^[0-9A-Za-z\-]+$");

  /// The major number of the version, incremented when making breaking changes.
  final int major;

  /// The minor number of the version, incremented when adding new functionality in a backwards-compatible manner.
  final int minor;

  /// The patch number of the version, incremented when making backwards-compatible bug fixes.
  final int patch;

  /// Build information relevant to the version. Does not contribute to sorting.
  final String build;

  final List<String> _preRelease;

  /// Indicates that the version is a pre-release. Returns true if preRelease has any segments, otherwise false
  bool get isPreRelease => _preRelease.isNotEmpty;

  /// Creates a new instance of [Version].
  ///
  /// [major], [minor], and [patch] are all required, all must be greater than 0 and not null, and at least one must be greater than 0.
  /// [preRelease] is optional, but if specified must be a [List] of [String] and must not be null. Each element in the list represents one of the period-separated segments of the pre-release information, and may only contain [0-9A-Za-z-].
  /// [build] is optional, but if specified must be a [String]. must contain only [0-9A-Za-z-.], and must not be null.
  /// Throws a [FormatException] if the [String] content does not follow the character constraints defined above.
  /// Throes an [ArgumentError] if any of the other conditions are violated.
  Version(this.major, this.minor, this.patch,
      {List<String> preRelease = const <String>[], this.build = ""})
      : _preRelease = preRelease {
    for (int i = 0; i < _preRelease.length; i++) {
      if (_preRelease[i].toString().trim().isEmpty) {
        throw ArgumentError("preRelease segments must not be empty");
      }
      // Just in case
      _preRelease[i] = _preRelease[i].toString();
      if (!_preReleaseRegex.hasMatch(_preRelease[i])) {
        throw FormatException(
            "preRelease segments must only contain [0-9A-Za-z-]");
      }
    }
    if (this.build.isNotEmpty && !_buildRegex.hasMatch(this.build)) {
      throw FormatException("build must only contain [0-9A-Za-z-.]");
    }

    if (major < 0 || minor < 0 || patch < 0) {
      throw ArgumentError("Version numbers must be greater than 0");
    }
  }

  @override
  int get hashCode => this.toString().hashCode;

  /// Pre-release information segments.
  List<String> get preRelease => List<String>.from(_preRelease);

  /// Determines whether the left-hand [Version] represents a lower precedence than the right-hand [Version].
  bool operator <(dynamic o) => o is Version && _compare(this, o) < 0;

  /// Determines whether the left-hand [Version] represents an equal or lower precedence than the right-hand [Version].
  bool operator <=(dynamic o) => o is Version && _compare(this, o) <= 0;

  /// Determines whether the left-hand [Version] represents an equal precedence to the right-hand [Version].
  @override
  bool operator ==(dynamic o) => o is Version && _compare(this, o) == 0;

  /// Determines whether the left-hand [Version] represents a greater precedence than the right-hand [Version].
  bool operator >(dynamic o) => o is Version && _compare(this, o) > 0;

  /// Determines whether the left-hand [Version] represents an equal or greater precedence than the right-hand [Version].
  bool operator >=(dynamic o) => o is Version && _compare(this, o) >= 0;

  @override
  int compareTo(Version? other) {
    if (other == null) {
      throw ArgumentError.notNull("other");
    }

    return _compare(this, other);
  }

  /// Creates a new [Version] with the [major] version number incremented.
  ///
  /// Also resets the [minor] and [patch] numbers to 0, and clears the [build] and [preRelease] information.
  Version incrementMajor() => Version(this.major + 1, 0, 0);

  /// Creates a new [Version] with the [minor] version number incremented.
  ///
  /// Also resets the [patch] number to 0, and clears the [build] and [preRelease] information.
  Version incrementMinor() => Version(this.major, this.minor + 1, 0);

  /// Creates a new [Version] with the [patch] version number incremented.
  ///
  /// Also clears the [build] and [preRelease] information.
  Version incrementPatch() => Version(this.major, this.minor, this.patch + 1);

  /// Creates a new [Version] with the right-most numeric [preRelease] segment incremented.
  /// If no numeric segment is found, one will be added with the value "1".
  ///
  /// If this [Version] is not a pre-release version, an Exception will be thrown.
  Version incrementPreRelease() {
    if (!this.isPreRelease) {
      throw Exception(
          "Cannot increment pre-release on a non-pre-release [Version]");
    }
    var newPreRelease = this.preRelease;

    var found = false;
    for (var i = newPreRelease.length - 1; i >= 0; i--) {
      var segment = newPreRelease[i];
      if (Version._isNumeric(segment)) {
        var intVal = int.parse(segment);
        intVal++;
        newPreRelease[i] = intVal.toString();
        found = true;
        break;
      }
    }
    if (!found) {
      newPreRelease.add("1");
    }

    return Version(this.major, this.minor, this.patch,
        preRelease: newPreRelease);
  }

  /// Returns a [String] representation of the [Version].
  ///
  /// Uses the format "$major.$minor.$patch".
  /// If [preRelease] has segments available they are appended as "-segmentOne.segmentTwo", with each segment separated by a period.
  /// If [build] is specified, it is appended as "+build.info" where "build.info" is whatever value [build] is set to.
  /// If all [preRelease] and [build] are specified, then both are appended, [preRelease] first and [build] second.
  /// An example of such output would be "1.0.0-preRelease.segment+build.info".
  @override
  String toString() {
    final StringBuffer output = StringBuffer("$major.$minor.$patch");
    if (_preRelease.isNotEmpty) {
      output.write("-${_preRelease.join('.')}");
    }
    if (build.trim().isNotEmpty) {
      output.write("+${build.trim()}");
    }
    return output.toString();
  }

  /// Creates a [Version] instance from a string.
  ///
  /// The string must conform to the specification at http://semver.org/
  /// Throws [FormatException] if the string is empty or does not conform to the spec.
  static Version parse(String? versionString) {
    if (versionString?.trim().isEmpty ?? true) {
      throw FormatException("Cannot parse empty string into version");
    }
    if (!_versionRegex.hasMatch(versionString!)) {
      throw FormatException("Not a properly formatted version string");
    }
    final Match m = _versionRegex.firstMatch(versionString)!;
    final String version = m.group(1)!;

    int? major, minor, patch;
    final List<String> parts = version.split(".");
    major = int.parse(parts[0]);
    if (parts.length > 1) {
      minor = int.parse(parts[1]);
      if (parts.length > 2) {
        patch = int.parse(parts[2]);
      }
    }

    final String preReleaseString = m.group(3) ?? "";
    List<String> preReleaseList = <String>[];
    if (preReleaseString.trim().isNotEmpty) {
      preReleaseList = preReleaseString.split(".");
    }
    final String build = m.group(5) ?? "";

    return Version(major, minor ?? 0, patch ?? 0,
        build: build, preRelease: preReleaseList);
  }

  static int _compare(Version? a, Version? b) {
    if (a == null) {
      throw ArgumentError.notNull("a");
    }

    if (b == null) {
      throw ArgumentError.notNull("b");
    }

    if (a.major > b.major) return 1;
    if (a.major < b.major) return -1;

    if (a.minor > b.minor) return 1;
    if (a.minor < b.minor) return -1;

    if (a.patch > b.patch) return 1;
    if (a.patch < b.patch) return -1;

    if (a.preRelease.isEmpty) {
      if (b.preRelease.isEmpty) {
        return 0;
      } else {
        return 1;
      }
    } else if (b.preRelease.isEmpty) {
      return -1;
    } else {
      int preReleaseMax = a.preRelease.length;
      if (b.preRelease.length > a.preRelease.length) {
        preReleaseMax = b.preRelease.length;
      }

      for (int i = 0; i < preReleaseMax; i++) {
        if (b.preRelease.length <= i) {
          return 1;
        } else if (a.preRelease.length <= i) {
          return -1;
        }

        if (a.preRelease[i] == b.preRelease[i]) continue;

        final bool aNumeric = _isNumeric(a.preRelease[i]);
        final bool bNumeric = _isNumeric(b.preRelease[i]);

        if (aNumeric && bNumeric) {
          final double aNumber = double.parse(a.preRelease[i]);
          final double bNumber = double.parse(b.preRelease[i]);
          if (aNumber > bNumber) {
            return 1;
          } else {
            return -1;
          }
        } else if (bNumeric) {
          return 1;
        } else if (aNumeric) {
          return -1;
        } else {
          return a.preRelease[i].compareTo(b.preRelease[i]);
        }
      }
    }
    return 0;
  }

  static bool _isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
