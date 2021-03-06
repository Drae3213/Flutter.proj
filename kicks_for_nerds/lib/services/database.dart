import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/models/MyAppUser.dart';
import 'package:kicks_for_nerds/models/posts.dart';
import 'package:uuid/uuid.dart';
import 'auth.dart';

class DataBase {
  final connection = FirebaseDatabase.instance.reference();
  DataBase({uid});

  String uid = '';

  Future<void> updateFlutterArticlesUser(user, fullName, handle) async {
    final usersReference = connection.child('users').child(user.uid);
    await usersReference.set(
      {
        'uid': user.uid,
        'email': user.email,
        //TODO removed user. from handle and fullName
        'handle': handle,
        'fullName': fullName,
        // 'password': user.password,

        // 'username': username,
        //add as many attributes as you want
      },
    );
  }

  // ignore: missing_return
  Future<MyAppUser> getUserData(user) async {
    MyAppUser myAppUser;
    // ignore: unused_local_variable
    final usersReference = connection.child('users').child(user.uid);
    await usersReference.get().then(
      (data) {
        myAppUser = MyAppUser(
          uid: data.value['uid'],
          email: data.value['email'],
          handle: data.value['handle'],
          fullName: data.value['fullName'],
        );
      },
    );
    return myAppUser;
  }

  // story saving function
  Future<void> saveStory({String imageUrl}) async {
    String user = await AuthService().currentUser();

    print("SAVINGGG STORY");
    print(user);

    String storyId = Uuid().v1();

    final storyReference =
        connection.child('users').child(user).child('stories').child(storyId);
    storyReference.set({
      'imageUrl': imageUrl,
    });
  }

  // firebase story retrieval function
  Future<List> getStory({AsyncSnapshot snapshot}) async {
    String user = await AuthService().currentUser();
    final storyReference = connection.child('stories');
    final List storyList = [];
    final Map<dynamic, dynamic> storyMap = snapshot.data.snapshot.value;

    print("GOT STORY");
    print(user);

    storyMap.forEach((key, value) {
      storyList.add(Story(
        imageUrl: value['imageUrl'],
        userId: value['userId'],
      ));
    });
  }

  Future<void> savePost({title, text, imageUrl}) async {
    String user = await AuthService().currentUser();

    print("SAVINGGG POST");
    print(user);

    String postId = Uuid().v1();
    final postReference =
        connection.child('users').child(user).child('posts').child(postId);
    postReference.set({
      'title': title,
      'text': text,
      'imageUrl': imageUrl,
    });
  }

  Future<List> getPost({AsyncSnapshot snapshot}) async {
    String user = await AuthService().currentUser();

    print("GOT POST");
    print(user);

    // final postReference = connection.child('users').child(user).child('posts');
    final List postList = [];
    final Map<dynamic, dynamic> postMap = snapshot.data.snapshot.value;

    postMap.forEach(
      (key, value) {
        // value.forEach((postKey, postValue) {
        //   print(postValue);
        //   postList.add(
        //     Post(
        //       userId: postValue['userId'],
        //       imageUrl: postValue['imageUrl'],
        //       title: postValue['title'],
        //       text: postValue['text'],
        //     ),
        //   );
        // });
        // print(key.imageUrl);
        postList.add(
          Post(
            userId: value['userId'],
            imageUrl: value['imageUrl'],
            title: value['title'],
            text: value['text'],
          ),
        );
      },
    );
    return postList;
  }

  Future<int> getPostLength() async {
    String user = await AuthService().currentUser();
    //TODO Made a change to the lengthReference connection "child('users').child(user).child('posts')"
    final lengthReference =
        connection.child('users').child(user).child('posts');
    int postLength =
        await lengthReference.once().then((value) => value.value.length);
    return postLength;
  }

  Future<void> setBio(String bio) async {
    String user = await AuthService().currentUser();
    //TODO changed bio
    final bioRef = connection.child('users').child(user);
    bioRef.update({
      'bio': "$bio",
    });
  }

  Future<void> setHandle(String handle) async {
    String user = await AuthService().currentUser();
    //TODO changed handles to handle
    final handleRef = connection.child('users').child(user);
    handleRef.update({
      'handle': "@$handle",
    });
  }

  Future<void> setUserName(String name) async {
    String user = await AuthService().currentUser();
    final nameRef = connection.child('users').child(user);
    nameRef.update(
      {
        'fullName': "$name",
      },
    );

    Future<void> setProfilePic({String imageUrl}) async {
      String user = await AuthService().currentUser();

      print("SAVINGGG Profile");
      print(user);

      final profileRef = connection.child('users').child(user);
      profileRef.update({
        'profile_pic': imageUrl,
      });
    }
  }

  Future<void> saveProfilePic({imageUrl}) async {
    String user = await AuthService().currentUser();

    print("SAVINGGG PROFILE");
    print(user);

    // String postId = Uuid().v1();

    final profileRef = connection.child('users').child(user);
    profileRef.set(
      {
        'profile_pic': imageUrl,
      },
    );
  }

  Future<void> updateStoryDisplay({imageUrl}) async {
    print("UPDATING DISPLAY");

    final displayRef = connection.child('display').child('stories');
    displayRef.update({
      'imageUrl': imageUrl,
    });
  }

  Future<void> updatePostDisplay({imageUrl}) async {
    print("UPDATING DISPLAY");

    final displayRef = connection.child('display').child('post');
    displayRef.update({
      'imageUrl': imageUrl,
    });
  }
}
// class DataService {}
