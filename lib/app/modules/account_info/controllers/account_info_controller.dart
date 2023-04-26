import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AccountInfoController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  


  Stream<User?> get firebaseUserStream => auth.authStateChanges();
  void asignOutUser() {
    auth.signOut();
  }
  Future<User?> getCurrentUser() async {
    return auth.currentUser;
}

Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid =  auth.currentUser!.uid;
    yield* firestore.collection("profile").doc(uid).snapshots();
  }
  
}
