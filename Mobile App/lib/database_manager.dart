import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FireStoreDataBase {
  String? downloadURL;

  Future getData() async {
    try {
      await downloadURLExample();
      return downloadURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> downloadURLExample() async {
    downloadURL = await FirebaseStorage.instance
        .ref()
        .child("3qpVahdh69fiUrJdswtfUn-1200-80.jpg")
        .getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}
