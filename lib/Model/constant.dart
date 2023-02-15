import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// --- Color Onboarding ---
Color kgreenbutton = Color.fromRGBO(87, 204, 153, 1);
Color kwhite = Color(0xFFFFFFFF);
Color kblack = Color(0xFF000000);
Color kgreen300 = Color.fromRGBO(121, 236, 148, 1);
Color kgreen = Color.fromRGBO(29, 201, 69, 1);
Color kgrey = Color(0xFFC0C0C0);
Color kgreendua = Color.fromRGBO(135, 195, 143, 1);


// --- Image Sign Up & Login ---
const String WelcomeScreenImage = "assets/images/PersonalData.png";
const String LoginScreenImage = 'assets/images/UserResearch.png';


// -- Sizing App Default --
const tDefaultSize = 30.0;
const tButtonHeight = 15.0;
const tFormHeight = 30.0;

//-- Text Sign Up & Login --
const String tSignUpTitle = "Get On Board";
const String tSignUpSubTitle = "Create your profile to start your Journey with us..";
const String tAlreadyHaveAnAccount = "Already have an Account? ";

const String tLoginTitle = "Welcome Back";
const String tLoginSubTitle = "Make it work, make it right, make it fast.";
const String tRememberMe = "Remember Me?";

//-- User Model
class UserModel {
  String? nama;
  String? email;
  int? phone;
  String? password;


  UserModel({
    this.nama,
    this.email,
    this.phone,
    this.password,

  });
}

//Image Fattah
const String fotoFattah = 'assets/images/OmFattahGans.png';
const String nameFattah = 'Fattah Anggit';

class SizeConfig{
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;

    defaultSize = orientation == Orientation.landscape
    ? screenHeight !* 0.024
        : screenWidth! * 0.024;

  }


}