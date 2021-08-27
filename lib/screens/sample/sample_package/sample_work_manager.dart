import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_common_app/index.dart';
import 'package:workmanager/workmanager.dart';

const simpleTaskKey = "simpleTask";
const rescheduledTaskKey = "rescheduledTask";
const failedTaskKey = "failedTask";
const simpleDelayedTask = "simpleDelayedTask";
const simplePeriodicTask = "simplePeriodicTask";
const simplePeriodic1HourTask = "simplePeriodic1HourTask";

class SampleWorkManager extends StatefulWidget {
  @override
  _SampleWorkManagerState createState() => _SampleWorkManagerState();
}

enum _Platform { android, ios }

class PlatformEnabledButton extends ElevatedButton {
  final _Platform platform;

  PlatformEnabledButton({
    required this.platform,
    required Widget child,
    required VoidCallback onPressed,
  }) : super(
            child: child,
            onPressed: (Platform.isAndroid && platform == _Platform.android ||
                    Platform.isIOS && platform == _Platform.ios)
                ? onPressed
                : null);
}

class _SampleWorkManagerState extends State<SampleWorkManager> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "BG Processing Tasks (iOS only)",
              style: Theme.of(context).textTheme.headline5,
            ),
            //This task runs once.
            //Most likely this will trigger immediately
            PlatformEnabledButton(
              platform: _Platform.ios,
              child: Text("Perform a BG Task"),
              onPressed: () {
                Workmanager().registerOneOffTask(
                  "1",
                  simpleTaskKey,
                  inputData: <String, dynamic>{
                    'int': 1,
                    'bool': true,
                    'double': 1.0,
                    'string': 'string',
                    'array': [1, 2, 3],
                  },
                );
              },
            ),

            Text(
              "One Off Tasks (Android only)",
              style: Theme.of(context).textTheme.headline5,
            ),
            //This task runs once.
            //Most likely this will trigger immediately
            PlatformEnabledButton(
              platform: _Platform.android,
              child: Text("Register OneOff Task"),
              onPressed: () {
                Workmanager().registerOneOffTask(
                  "1",
                  simpleTaskKey,
                  inputData: <String, dynamic>{
                    'int': 1,
                    'bool': true,
                    'double': 1.0,
                    'string': 'string',
                    'array': [1, 2, 3],
                  },
                );
              },
            ),
            PlatformEnabledButton(
              platform: _Platform.android,
              child: Text("Register rescheduled Task"),
              onPressed: () {
                Workmanager().registerOneOffTask(
                  "1-rescheduled",
                  rescheduledTaskKey,
                  inputData: <String, dynamic>{
                    'key': Random().nextInt(64000),
                  },
                );
              },
            ),
            PlatformEnabledButton(
              platform: _Platform.android,
              child: Text("Register failed Task"),
              onPressed: () {
                Workmanager().registerOneOffTask(
                  "1-failed",
                  failedTaskKey,
                );
              },
            ),
            //This task runs once
            //This wait at least 10 seconds before running
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register Delayed OneOff Task"),
                onPressed: () {
                  Workmanager().registerOneOffTask(
                    "2",
                    simpleDelayedTask,
                    initialDelay: Duration(seconds: 10),
                  );
                }),
            SizedBox(height: 8),
            Text(
              "Periodic Tasks (Android only)",
              style: Theme.of(context).textTheme.headline5,
            ),
            //This task runs periodically
            //It will wait at least 10 seconds before its first launch
            //Since we have not provided a frequency it will be the default 15 minutes
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register Periodic Task"),
                onPressed: () {
                  Workmanager().registerPeriodicTask(
                    "3",
                    simplePeriodicTask,
                    initialDelay: Duration(seconds: 10),
                  );
                }),
            //This task runs periodically
            //It will run about every hour
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register 1 hour Periodic Task"),
                onPressed: () {
                  Workmanager().registerPeriodicTask(
                    "5",
                    simplePeriodic1HourTask,
                    frequency: Duration(hours: 1),
                  );
                }),
            PlatformEnabledButton(
              platform: _Platform.android,
              child: Text("Cancel All"),
              onPressed: () async {
                await Workmanager().cancelAll();
                print('Cancel all tasks completed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
