import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruite_app/core/services/data_services.dart';

class FireStoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(String collectionPath, Map<String, dynamic> data) async {
    await firestore.collection(collectionPath).add(data);
  }
}
