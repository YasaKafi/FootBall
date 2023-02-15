import 'package:flutter/material.dart';
import 'package:football/Navigation%20Bar/mainNav.dart';
import 'package:football/Model/constant.dart';
import 'package:football/Authentication/SignUpController.dart';
import 'package:football/Authentication/Screen/login.dart';
import 'package:get/get.dart';
import 'package:football/Navigation%20Bar/home.dart';
import 'package:football/Navigation Bar/Widget/HomePageViewModel.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController= TextEditingController();
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();



  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataUser = Provider.of<HomepageViewModel>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _namaController,
              // controller: controller.fullName,
              decoration: InputDecoration(
                label: Text("Full Name"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFF272727),
                ),
              ),
              validator: (value) {
                if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                  return 'Enter Correct Name';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight-20),
            TextFormField(
              // controller: controller.email,
              controller: _emailController,
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
              // controller: controller.phoneNo,
              controller: _phoneController,
              decoration: InputDecoration(
                label: Text("Phone No"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Color(0xFF272727),
                ),
              ),
              validator: (value) {
                if(value!.isEmpty || !RegExp(r'^[0-9]{1,4}[-\s\./0-9]+$').hasMatch(value!)){
                  return 'Enter Correct Phone Number';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight-20),
            TextFormField(
              // controller: controller.password,
              controller: _passController,
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
            SizedBox(height: tFormHeight-20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    // final form = _formKey.currentState!;
                    if(_formKey.currentState!.validate()){
                      final userData = UserModel(
                        nama: _namaController.text,
                        email: _emailController.text,
                        phone: _phoneController.hashCode,
                        password: _passController.text,

                      );
                      dataUser.addUser(userData);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navigation()));
                      // SignUpController.istance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    }

                  },
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kgreenbutton)),
                  child: Text('SIGNUP')
              ),
            ),

          ],
        ),
      ),
    );
  }
}
