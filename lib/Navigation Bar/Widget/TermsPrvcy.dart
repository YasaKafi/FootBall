import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:football/Model/constant.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class KebijakanPrivasi extends StatefulWidget {
  const KebijakanPrivasi({Key? key}) : super(key: key);

  @override
  State<KebijakanPrivasi> createState() => _KebijakanPrivasiState();
}

class _KebijakanPrivasiState extends State<KebijakanPrivasi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 249, 254, 1.0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  top: 55,
                  left: 25,
                  child: Text('FootBall',
                    style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 20,
                        color: kgreen,

                    ),
                  ),
              ),
              Positioned(
                top: 60,
                left: 36,
                child: SvgPicture.asset("assets/freepikBall.svg",
                  height: 18,
                  width: 18,

                ),
              ),
              Positioned(
                  top: 60,
                  left: 54,
                  child: SvgPicture.asset('assets/freepikBall.svg',
                    height: 18,
                    width: 18,
                  )
              ),

              Positioned(
                top: 90,
                  left: 20,
                  child: Text(
                    'Privacy policy',
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w500,

                    ),
                  ),
              ),

              Positioned(
                top: 160,
                left: 20,
                right: 20,
                child: Text(

                  lorem(paragraphs: 10, words: 200),
                  maxLines: 37,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w500,

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
