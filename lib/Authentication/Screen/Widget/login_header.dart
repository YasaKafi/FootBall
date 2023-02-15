import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageColor,
    this.heightBetween,
    this.imageHeight = 0.2,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String image, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
            image: AssetImage(image),
            height: 200,
        ),
        SizedBox(height: heightBetween),
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, fontFamily: 'Poppins')),
        Text(subTitle, textAlign: textAlign,style:  Theme.of(context).textTheme.bodyText1,)
      ],
    );
  }
}
