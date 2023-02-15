import 'package:flutter/material.dart';
import 'package:football/Navigation%20Bar/mainNav.dart';
import 'package:football/Model/constant.dart';
import 'package:football/Authentication/Screen/Widget/login_header.dart';
import 'package:football/Navigation%20Bar/home.dart';
import 'package:football/Authentication/Screen/register.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              LoginHeader(
                  image: LoginScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: tFormHeight-20),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text("E-mail"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF272727),
                          ),
                        ),
                        validator: (value) {
                          if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value!)){
                            return 'Enter Correct Email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: tFormHeight-20),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.fingerprint,
                            color: Color(0xFF272727),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password can't be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: tFormHeight-20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: (){},
                            child: Text('Forgot Password?')
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              if(formKey.currentState!.validate()){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navigation()));
                              }

                            },
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kgreenbutton)),
                            child: Text('LOGIN')
                        ),
                      ),
                      const SizedBox(height: tFormHeight-20),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(

                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Register()));
                            },
                            child: Text.rich(
                                TextSpan(
                              text: 'Dont Have Account? ',
                              style: Theme.of(context).textTheme.bodyText1,
                              children: const [
                                TextSpan(
                                  text: 'SignUp',
                                  style: TextStyle(color: Colors.blue,)
                                ),
                              ],
                            ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
