import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';
import 'package:provider/provider.dart';
import 'package:football/Navigation Bar/Widget/HomePageViewModel.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    final dataUser = Provider.of<HomepageViewModel>(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            BarContainer(),
            BodyContainer()
          ],
        ),
      ),
    );
  }
}

class BarContainer extends StatelessWidget {
  const BarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Color.fromRGBO(240, 249, 254, 1.0),
      height: size.height * 0.3,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 35,
            left: 100,
            child: Column(
              children: [

                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width:  0.8,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/broprofile.jpg')),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataUser = Provider.of<HomepageViewModel>(context);
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight-10, horizontal: tFormHeight-10),
        color: Color.fromRGBO(240, 249, 254, 1.0),
        height: size.height * 0.65,
        width: double.infinity,
        child: Form(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              TextFormField(
                controller: TextEditingController(text: 'Full Name : ${dataUser.userData.nama}'),
                readOnly: true,
                // controller: controller.fullName,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline_rounded,
                    color: Color(0xFF272727),
                  ),

                  border: UnderlineInputBorder(),

                ),
              ),
              const SizedBox(height: tFormHeight-20),
              TextFormField(
                controller: TextEditingController(text: 'E-mail : ${dataUser.userData.email}'),
                readOnly: true,
                // controller: controller.email,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xFF272727),
                  ),

                  border: UnderlineInputBorder(),

                ),
              ),
              const SizedBox(height: tFormHeight-20),
              TextFormField(
                controller: TextEditingController(text: 'Phone : ${dataUser.userData.phone}'),
                readOnly: true,
                // controller: controller.phoneNo,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: Color(0xFF272727),
                  ),

                  border: UnderlineInputBorder(),

                ),
              ),
              const SizedBox(height: tFormHeight-20),
              TextFormField(
                controller: TextEditingController(text: 'Password : ${dataUser.userData.password}'),
                readOnly: true,
                // controller: controller.password,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.fingerprint,
                    color: Color(0xFF272727),
                  ),

                  border: UnderlineInputBorder(),

                ),
              ),
              SizedBox(height: tFormHeight-20),


            ],
          ),
        ),
    );
  }
}
