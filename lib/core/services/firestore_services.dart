import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruite_app/core/services/data_services.dart';

class FireStoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
    String collectionPath,
    Map<String, dynamic> data,
    String? documentId,
  ) async {
    if (documentId != null) {
      await firestore.collection(collectionPath).doc(documentId).set(data);
    } else {
      await firestore.collection(collectionPath).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String collectionPath,
    required String documentId,
  }) async {
    var data = await firestore.collection(collectionPath).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }
}
