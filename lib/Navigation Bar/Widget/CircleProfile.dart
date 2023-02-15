import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';

class CircleProfile extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback onPressed;
  const CircleProfile({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(29, 201, 69, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}