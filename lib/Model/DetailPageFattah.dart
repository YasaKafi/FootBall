import 'package:flutter/material.dart';
import 'package:football/Model/FattahModel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPageFattah extends StatefulWidget {
  const DetailPageFattah({Key? key, }) : super(key: key);

  @override
  State<DetailPageFattah> createState() => _DetailPageFattahState();
}

class _DetailPageFattahState extends State<DetailPageFattah> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: size.height,
        child: Container(
          child: Center(

            child: Image.asset('assets/images/gakBolehK.png'),
          ),
        ),
      ),
    );
  }
}
