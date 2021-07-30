import 'package:firebase_database/firebase_database.dart';

class DataBase {
  final connection = FirebaseDatabase.instance.reference();
  DataBase({uid});

  String uid = '';

  Future<void> updateFlutterArticlesUser(user) async {
    final usersReference = connection.child('users').child(user.uid);
    usersReference.set(
      {
        'uid': user.uid,
        'email': user.email,
        'password': user.password, 

        // 'username': username,
        //add as many attributes as you want
      },
    );
  }
}
