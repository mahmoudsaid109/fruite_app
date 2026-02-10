import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({required super.id, required super.name, required super.email});
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
    );
  }
  factory UserModel.fromJson(Map<String,dynamic>json){
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
  factory UserModel.fromEntity(UserEntity userEntity) {
    return UserModel(
      id: userEntity.id,
      name: userEntity.name,
      email: userEntity.email,
    );
  }
   toMap() {
    return {'id': id, 'name': name, 'email': email};
  }
}
