import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';
import 'package:football/Authentication/Screen/login.dart';

class SignUp_Footer extends StatelessWidget {
  const SignUp_Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TextButton(
        style: ButtonStyle(alignment: Alignment.bottomCenter),
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text.rich(
          TextSpan(
              children: [
                TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1,),
                TextSpan(text: "LOGIN")
              ]
          ),
        ),
      ),
    );
  }
}