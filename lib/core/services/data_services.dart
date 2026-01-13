abstract class DatabaseServices{
//collloectionPath means the name of collection in firestore or (endpoint in realtime database)
  Future<void> addData(String collectionPath, Map<String, dynamic> data);
}