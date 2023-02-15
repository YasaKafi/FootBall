import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:football/Authentication/Screen/login.dart';
import 'package:football/Model/constant.dart';
import 'package:football/Navigation Bar/mainNav.dart';
import 'package:football/Navigation Bar/Widget/Account.dart';
import 'package:football/Navigation Bar/Widget/About.dart';
import 'package:football/Navigation Bar/Widget/TermsPrvcy.dart';
import 'package:football/Navigation Bar/Widget/Notification.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 250, 234, 1.0),
        body: Container(
          child: Column(
            children: [
              BodyApp(),
              BodyContainer(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        left: 29,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context
                                ,MaterialPageRoute(builder: (context) => Account(
                                )
                                )
                            );
                          },
                          child: FieldFunction(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                      left: 5,
                                      child: Icon(Icons.person)
                                  ),
                                  Positioned(
                                    top: 14,
                                    left: 35,
                                    child: Text(
                                      "Account",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins'
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),

                      Positioned(
                        top: 75,
                        left: 29,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context
                                ,MaterialPageRoute(builder: (context) => NotNotification(
                                )
                                )
                            );
                          },
                          child: FieldFunction(
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 10,
                                      left: 5,
                                      child: Icon(Icons.notifications)
                                  ),
                                  Positioned(
                                    top: 14,
                                    left: 35,
                                    child: Text(
                                      "Notification",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins'
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Positioned(
                        top: 145,
                        left: 29,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context
                                ,MaterialPageRoute(builder: (context) => AboutAplication(
                                )
                                )
                            );
                          },
                          child: FieldFunction(
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 10,
                                      left: 5,
                                      child: Icon(Icons.info)
                                  ),
                                  Positioned(
                                    top: 14,
                                    left: 35,
                                    child: Text(
                                      "About",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins'
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Positioned(
                        top: 215,
                        left: 29,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context
                                ,MaterialPageRoute(builder: (context) => KebijakanPrivasi(
                                )
                                )
                            );
                          },
                          child: FieldFunction(
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 10,
                                      left: 5,
                                      child: Icon(Icons.insert_drive_file)
                                  ),
                                  Positioned(
                                    top: 14,
                                    left: 35,
                                    child: Text(
                                      "Terms & Prvacy",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins'
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),



                      //Arrow 4

                      //Logout Button
                      Center(
                        child: Align(
                          alignment: Alignment(-0.70, 0.84),
                          child: TextButton(

                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red,
                                  fontSize: 22,
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ));
  }
}

class FieldContainer extends StatelessWidget {
  final Widget child;
  const FieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      width: size.width * 0.9,
      height: size.height * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}

class FieldFunction extends StatelessWidget {
  final Widget child;
  const FieldFunction({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.7, horizontal: 18),
      height: size.height * 0.080,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color.fromRGBO(189, 210, 188, 0.5019607843137255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}

class BodyApp extends StatelessWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double? defalutSize = SizeConfig.defaultSize;
    return Container(
      height: size.height * 0.4,
      child: Stack(
          children: [
        SizedBox(
          height: defalutSize! * 24,
          child: Stack(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: defalutSize! * 26,
                  color: kgreen,
                ),
              ),
            ],
          ),
        ),
            Positioned(
              top: 40,
              left: 110,
              child: Column(
                children: [
                  SizedBox(height: 15,),

                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: defalutSize),
                    width: defalutSize * 16,
                    height: defalutSize * 16,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: defalutSize * 0.8,
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
      ]
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height-100);
    path.quadraticBezierTo(width * 0.5, height, width , height-100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BodyContainer extends StatelessWidget {
  final Widget child;
  const BodyContainer({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 7.7,horizontal: 7),
          height: size.height * 0.521,
          width: double.infinity,
          decoration:BoxDecoration(
            color: Color.fromRGBO(234, 250, 234, 1.0),
          ),
          child: child,
        ),
      ],
    );
  }
}
