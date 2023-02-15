import 'package:flutter/material.dart';
import 'package:football/Navigation Bar/Widget/LeagueContainer.dart';
import 'package:football/Navigation Bar/Widget/TableScreen.dart';
import 'package:football/Model/constant.dart';

class Competition extends StatelessWidget {
  const Competition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(234, 250, 234, 1.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(height: 20,),
                Text(
                  'Competitions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 50,),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      child: LeagueContainer(image:'assets/images/PL.png'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TableScreen(code: 'PL'))
                        );
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image:'assets/images/LaLiga.png'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TableScreen(code: 'PD'))
                        );
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/Bundesliga.png'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TableScreen(code: 'BL1'))
                        );
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/SerieA.png'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TableScreen(code: 'SA'))
                        );
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/Ligue1.png'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TableScreen(code: 'FL1'))
                        );
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/Liganos.png'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TableScreen(code: 'PPL'))
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
