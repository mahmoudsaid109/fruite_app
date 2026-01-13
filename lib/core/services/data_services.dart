import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';

abstract class DatabaseServices{
//collloectionPath means the name of collection in firestore or (endpoint in realtime database)
  Future<void> addData(String collectionPath, Map<String, dynamic> data);
  Future<UserEntity>getUserData({required String collectionPath,required String uId});
}