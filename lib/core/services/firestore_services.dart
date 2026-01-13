import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruite_app/core/services/data_services.dart';
import 'package:fruite_app/features/auth/data/models/user_model.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';

class FireStoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(String collectionPath, Map<String, dynamic> data) async {
    await firestore.collection(collectionPath).add(data);
  }

  @override
  Future<UserEntity> getUserData({required String collectionPath, required String uId})async {
   var data = await firestore.collection(collectionPath).doc(uId).get();
   return UserModel.fromJson(data.data() as Map<String,dynamic>);
  }
}
