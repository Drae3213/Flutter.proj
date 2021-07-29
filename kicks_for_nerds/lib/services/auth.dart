import 'package:firebase_auth/firebase_auth.dart';
import 'package:kicks_for_nerds/models/MyAppUser.dart';
import 'package:kicks_for_nerds/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create MyAppUser from a Firebase User
  // ignore: missing_return
  MyAppUser _userFromFirebaseUser(User user) {
    user != null ? MyAppUser(uid: user.uid, email: user.email) : null;
  }

  //create Firebase User
  Future registerFirebaseUser(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      DataBase(uid: user.uid).updateFlutterArticlesUser(user);
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //login Firebase User
  Future loginFirebaseUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOutFirebaseUser() async {
    try {
      return _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Stream<MyAppUser> get user =>
      _auth.authStateChanges().map(_userFromFirebaseUser);
}
