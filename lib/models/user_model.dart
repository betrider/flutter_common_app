import 'package:flutter_common_app/index.dart';

class UserModel extends Equatable {
  final String? uid;
  final String? email;
  final String? displayName;
  final String? phoneNumber;
  final String? photoUrl;

  UserModel({
    this.uid,
    this.email,
    this.displayName,
    this.phoneNumber,
    this.photoUrl,
  }); 

  @override
  List<Object?> get props => [uid, email, displayName, phoneNumber, photoUrl];

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      displayName: map['displayName'],
      phoneNumber: map['phoneNumber'],
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
