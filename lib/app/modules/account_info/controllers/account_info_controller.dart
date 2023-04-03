import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AccountInfoController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;


  Stream<User?> get firebaseUserStream => auth.authStateChanges();
  void asignOutUser() {
    auth.signOut();
  }
  Future<User?> getCurrentUser() async {
    return auth.currentUser;
}
}
