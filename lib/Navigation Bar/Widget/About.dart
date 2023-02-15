import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class AboutAplication extends StatefulWidget {
  const AboutAplication({Key? key}) : super(key: key);

  @override
  State<AboutAplication> createState() => _AboutAplicationState();
}

class _AboutAplicationState extends State<AboutAplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(240, 249, 254, 1.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
          ),
          // Container(
          //   width: 180,
          //   height: 140,
          //   alignment: Alignment.topLeft,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       fit: BoxFit.contain,
          //       image: AssetImage(
          //         'assets/images/bubble1.png',
          //       ),
          //     ),
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 140,
                height: 140,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFD9D9D9),
                  backgroundImage: AssetImage('assets/images/broprofile.jpg'),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(207, 236, 252, 0.8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Stack(
                children: [
                  ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Nama: Yasa Kafi Razzan',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text('Email: yasazerina@gmail.com',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 50,
                                bottom: 50,
                              ),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(
                                    lorem(paragraphs: 3,words: 100),
                                    maxLines: 19,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
