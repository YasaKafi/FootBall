import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';
import 'package:football/Authentication/Screen/Widget/login_header.dart';
import 'package:football/Authentication/Screen/login.dart';
import 'package:football/Authentication/auth.dart';
import 'package:football/Authentication/SignUpController.dart';
import 'package:get/get.dart';
import 'package:football/Authentication/Screen/Widget/login_form.dart';
import 'package:football/Authentication/Screen/Widget/login_footer.dart';



class Register extends StatelessWidget  {
    Register({Key? key}) : super(key: key);
   // final User? user = Auth().currentUser;
   //
   // Future<void> signOut() async {
   //   await Auth().signOut();
   // }
   //
   // Widget _title(){
   //   return const Text('Firebase Auth');
   // }
   //
   // Widget _userid(){
   //   return Text(user?.email ?? 'User email');
   // }

   final formKey = GlobalKey<FormState>();
   // final dynamic = Get.lazyPut(() => dynamic());
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SignUpController());
    // final _formKey = GlobalKey<FormState>();



    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                LoginHeader(
                    image: WelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle,
                ),
                SignUpForm(

                ),
                SignUp_Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





