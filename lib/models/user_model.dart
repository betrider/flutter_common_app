import 'package:flutter_common_app/utilities/index.dart';

class UserModel extends Equatable{
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
}
