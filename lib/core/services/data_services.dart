
abstract class DatabaseServices{
//collloectionPath means the name of collection in firestore or (endpoint in realtime database)
  Future<void> addData({required String collectionPath, required Map<String, dynamic> data, String? documentId});
  Future<Map<String, dynamic>> getData({required String collectionPath,required String documentId});
  Future<bool> checkIfDocumentExists({required String collectionPath, required String documentId});
}