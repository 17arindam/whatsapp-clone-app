import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whatsapp_clone/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String name,
    required String email,
    required String phoneNumber,
    required bool isOnline,
    required String uid,
    required String status,
    required String profileUrl,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          isOnline: isOnline,
          uid: uid,
          status: status,
          profileUrl: profileUrl,
        );

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>?;

    if (data == null) {
      throw StateError('missing data for userId: ${snapshot.id}');
    }

    return UserModel(
      name: data['name'] as String,
      email: data['email'] as String,
      phoneNumber: data['phoneNumber'] as String,
      uid: data['uid'] as String,
      isOnline: data['isOnline'] as bool,
      profileUrl: data['profileUrl'] as String,
      status: data['status'] as String,
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "phoneNumber": phoneNumber,
      "uid": uid,
      "isOnline": isOnline,
      "profileUrl": profileUrl,
      "status": status,
    };
  }
}
