// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:football/Authentication/SignUpEmailPasswordFailure.dart';
// import 'package:get/get.dart';
// import 'package:football/home.dart';
// import 'package:football/View/Onboarding.dart';
// import 'package:football/home.dart';
//
// class AuthenticationRepository extends GetxController{
//   static  get instance => Get.find();
//
//   //Variable
//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;
//
//   @override
//   void onReady() {
//     firebaseUser = Rx<User?>(_auth.currentUser);
//     firebaseUser.bindStream(_auth.userChanges());
//     ever(firebaseUser, _setInitialScreen);
//   }
//
//   _setInitialScreen(User? user) {
//     user == null ? Get.offAll(() =>   OnBoard()) : Get.offAll(() => const Home());
//   }
//
//    void createUserWithEmailAndPassword(String email, String password) async {
//
//   }
//
//
//
//   Future<void> logout() async => await _auth.signOut();
//
//
// }


