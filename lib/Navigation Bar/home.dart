import 'package:flutter/material.dart';
import 'package:football/Model/BarcelonaModel.dart';
import 'package:football/Model/BrightonModel.dart';
import 'package:football/Model/CrystalPalaceModel.dart';
import 'package:football/Model/DetailPageFattah.dart';
import 'package:football/Model/EvertonModel.dart';
import 'package:football/Model/FattahModel.dart';
import 'package:football/Model/LiverpollModel.dart';
import 'package:football/Model/ManchesterCityModel.dart';
import 'package:football/Model/MilanModel.dart';
import 'package:football/Navigation%20Bar/search.dart';
import 'package:football/Model/VillarrealModel.dart';
import 'package:football/Model/constant.dart';
import 'package:http/http.dart' as http;
import 'package:football/Model/PremiereLeagueModel.dart';
import 'package:provider/provider.dart';
import 'package:football/Navigation Bar/Widget/HomePageViewModel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:convert';
import '../Model/DetailPage.dart';
import 'package:football/Model/SpainLeagueModel.dart';
import 'package:football/Model/DetailPageSpain.dart';
import 'package:football/Model/Dortmund.dart';
import 'package:football/Model/DetailPageDortmund.dart';
import 'package:football/Model/DetailPageBrighton.dart';
import 'package:football/Model/DetailPageMilan.dart';
import 'package:football/Model/DetailPageVillarreal.dart';
import 'package:football/Model/DetailPageEverton.dart';
import 'package:football/Model/DetailPageBarcelona.dart';
import 'package:football/Model/DetailPageCrystalPalace.dart';
import 'package:football/Model/DetailPageLiverpool.dart';
import 'package:football/Model/DetailPageManchesterCity.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PremiereLeagueModel? premiereLeagueModel;
  SpainLeagueModel? spainLeagueModel;
  Dortmund? dortmund;
  Brighton? brighton;
  Milan? milan;
  Villarreal? villarreal;
  Everton? everton;
  Barcelona? barcelona;
  Liverpool? liverpool;
  CrystalPalace? crystalPalace;
  ManchesterCity? manchesterCity;
  Fattah? fattah;
  bool isLoaded = true;





  @override
  void initState() {
    super.initState();
    getAllListPL();
    getAllListSP();
    getDortmund();
    getBrighton();
    getMilan();
    getVillarreal();
    getEverton();
    getBarcelona();
    getCrystalPalace();
    getLiverpool();
    getManchester();
    getFattah();
  }

  void getFattah() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145477"
        )
    );
    print("status code : " + res.statusCode.toString());

      fattah=
        Fattah.fromJson(json.decode(res.body.toString()));
    print("Name : " + fattah!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getManchester() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145477"
        )
    );
    print("status code : " + res.statusCode.toString());

    manchesterCity =
        ManchesterCity.fromJson(json.decode(res.body.toString()));
    print("Name : " + manchesterCity!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getBarcelona() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145402"
        )
    );
    print("status code : " + res.statusCode.toString());

    barcelona =
        Barcelona.fromJson(json.decode(res.body.toString()));
    print("Name : " + barcelona!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getCrystalPalace() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145969"
        )
    );
    print("status code : " + res.statusCode.toString());

    crystalPalace =
        CrystalPalace.fromJson(json.decode(res.body.toString()));
    print("Name : " + crystalPalace!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getLiverpool() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145978"
        )
    );
    print("status code : " + res.statusCode.toString());

    liverpool =
        Liverpool.fromJson(json.decode(res.body.toString()));
    print("Name : " + liverpool!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getEverton() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145943"
        )
    );
    print("status code : " + res.statusCode.toString());

    everton =
        Everton.fromJson(json.decode(res.body.toString()));
    print("Name : " + everton!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getVillarreal() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145939"
        )
    );
    print("status code : " + res.statusCode.toString());

    villarreal =
        Villarreal.fromJson(json.decode(res.body.toString()));
    print("Name : " + villarreal!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getMilan() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145938"
        )
    );
    print("status code : " + res.statusCode.toString());

    milan =
        Milan.fromJson(json.decode(res.body.toString()));
    print("Name : " + milan!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getBrighton() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145934"
        )
    );
    print("status code : " + res.statusCode.toString());

    brighton =
        Brighton.fromJson(json.decode(res.body.toString()));
    print("Name : " + brighton!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getDortmund() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/lookupplayer.php?id=34145936"
        )
    );
    print("status code : " + res.statusCode.toString());

    dortmund =
        Dortmund.fromJson(json.decode(res.body.toString()));
    print("Name : " + dortmund!.players![0].strPlayer.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getAllListSP() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
      Uri.parse(
          "https://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?s=Soccer&c=Spain"
      )
    );
    print("status code : " + res.statusCode.toString());

    spainLeagueModel =
        SpainLeagueModel.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + spainLeagueModel!.teams![0].strTeam.toString());

    setState(() {
      isLoaded = true;
    });
  }

  void getAllListPL() async{
    setState(() {
      isLoaded = false;
    });
    final res = await http.get(
        Uri.parse(
            "https://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?l=English%20Premier%20League"
        )
    );
    print("status code : " + res.statusCode.toString());

    premiereLeagueModel =
        PremiereLeagueModel.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + premiereLeagueModel!.teams![0].strTeam.toString());

    setState(() {
      isLoaded = true;
    });

  }

  @override
  Widget build(BuildContext context) {
    final dataUser = Provider.of<HomepageViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold (
      backgroundColor: Colors.white,
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 7.7,horizontal: 5),
        height: size.height ,
        width: double.infinity,
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
        ),

        child: Column(

          children: [
            Stack(
              children: [
                AppBarHome(
                    child: Stack()
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment:
                                Alignment.topLeft,
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/broprofile.jpg')),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Halo, ${dataUser.userData.nama}.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(onPressed: (){},
                                icon: Icon(Icons.notifications_active_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 65,
                    right: 25,
                    child: Text('FootBall',
                      style: TextStyle(
                        fontFamily: 'LemonMilk',
                        fontSize: 35,
                        color: Colors.white

                      ),
                    )
                ),
                Positioned(
                    top: 125,
                    right: 30,
                    child: Text("Let's see about your " '\n'
                      "             favorite team here",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          wordSpacing: 2,


                      ),
                    )
                ),
                Positioned(
                  top: 73,
                    right: 133.5,
                    child: SvgPicture.asset("assets/freepikBall.svg",
                    height: 30,
                      width: 30,

                    ),
                ),
                Positioned(
                    top: 73,
                    right: 164.5,
                    child: SvgPicture.asset('assets/freepikBall.svg',
                    height: 30,
                      width: 30,
                    )
                ),
                Positioned(
                    top: 70,
                    left: 0,
                    child: SvgPicture.asset('assets/images/SoccerPana.svg',
                      height: 150,
                      width: 40,
                    )
                ),

              ],

      ),
            BodyContainer(
              child: Stack(
                children: [
                  Positioned(
                      top: 12,
                      left: 10,
                      child: Text(
                        'League English Premiere',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400
                        ),
                      ),
                  ),
                  Positioned(
                    top: 40,
                      child: Container(
                        width: 400,
                        height: 100,
                        child:  isLoaded ?ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount: premiereLeagueModel!.teams!.length,
                            itemBuilder: (BuildContext context, int index){
                              return InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                            myTeam : premiereLeagueModel!.teams![index],
                                          )
                                      ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: 95,
                                  margin: EdgeInsets.only(bottom: 5),

                                  child: Card(
                                    color: Color.fromRGBO(236, 239, 239, 1.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                    ),

                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0.0,0.0),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child: Image.network(
                                              premiereLeagueModel!.teams![index].strTeamBadge.toString(),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                              );

                            },
                        ) : Center(child : CircularProgressIndicator()),
                      )
                  ),
                  Positioned(
                    top: 145,
                    left: 10,
                    child: Text(
                      'La Liga Spain',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Positioned(
                      top: 170,
                      child: Container(
                        width: 400,
                        height: 100,
                        child:  isLoaded ?ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: spainLeagueModel!.teams!.length,
                          itemBuilder: (BuildContext context, int index){
                            return InkWell(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailPageSpain(
                                        teamKu : spainLeagueModel!.teams![index],
                                      ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 80,
                                width: 95,
                                margin: EdgeInsets.only(bottom: 5),

                                child: Card(
                                  color: Color.fromRGBO(236, 239, 239, 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)),
                                  ),

                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0.0,0.0),
                                        child: Container(
                                          height: 70,
                                          width: 70,
                                          child: Image.network(
                                            spainLeagueModel!.teams![index].strTeamBadge.toString(),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            );

                          },
                        ) : Center(child : CircularProgressIndicator()),
                      )
                  ),
                  Positioned(
                    top: 280,
                    left: 10,
                    child: Text(
                      'Best Player of Year',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Positioned(
                      top: 310,
                      child: Row(
                        children: [
                          Container(
                            width: 400,
                            height: 145,
                            child: isLoaded? ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                BoxCardDortmund(),
                                SizedBox(width: 10,),
                                BoxCardBrighton(),
                                SizedBox(width: 10,),
                                BoxCardMilan(),
                                SizedBox(width: 10,),
                                BoxCardVillarreal(),
                                SizedBox(width: 10,),
                                BoxCardEverton(),
                                SizedBox(width: 10,),
                                BoxCardBarcelona(),
                                SizedBox(width: 10,),
                                BoxCardCrystalPalace(),
                                SizedBox(width: 10,),
                                BoxCardLiverpool(),
                                SizedBox(width: 10,),
                                BoxCardManchesterCity(),
                                SizedBox(width: 10,),
                                BoxCardFattah(),
                                SizedBox(width: 10,),







                              ],

                            ) : Center(child : CircularProgressIndicator()),
                          ),
                        ],
                      )
                  ),
                  // Positioned(
                  //   top: 290,
                  //   left: 10,
                  //   child: Text(
                  //     'Best Player of Year',
                  //     style: TextStyle(
                  //         fontSize: 16,
                  //         fontFamily: 'Poppins',
                  //         fontWeight: FontWeight.w400
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //     top: 300,
                  //     child: Container(
                  //       width: 150,
                  //       height: 100,
                  //       child:  isLoaded ?ListView.builder(
                  //         // scrollDirection: Axis.horizontal,
                  //         itemCount: dortmund!.players!.length,
                  //         // itemCount: premiereLeagueModel!.teams!.length,
                  //         itemBuilder: (BuildContext context, int index){
                  //           return InkWell(
                  //             onTap: (){
                  //               Navigator.push(context,
                  //                 MaterialPageRoute(
                  //                   builder: (context) => DetailPageDortmund(
                  //                       dortmundKu: dortmund!.players![index],
                  //                   ),
                  //                 ),
                  //               );
                  //             },
                  //             child: Container(
                  //               height: 90,
                  //               width: 100,
                  //               margin: EdgeInsets.only(bottom: 5),
                  //
                  //               child: Card(
                  //                 color: Color.fromRGBO(236, 239, 239, 1.0),
                  //                 shape: RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.all(
                  //                       Radius.circular(20)),
                  //                 ),
                  //
                  //                 child: Stack(
                  //                   children: [
                  //                     Align(
                  //                       alignment: Alignment(0.0,0.0),
                  //                       child: Container(
                  //                         height: 70,
                  //                         width: 50,
                  //                         child: Column(
                  //                           children: [
                  //                             Image.network(
                  //                               dortmund!.players![index].strCutout.toString()
                  //                             ),
                  //                             Text(dortmund!.players![index].strPlayer.toString(), style: TextStyle(
                  //                               fontSize: 10,
                  //                               fontFamily: 'Poppins',
                  //                               fontWeight: FontWeight.w100,
                  //                             ),textAlign: TextAlign.end,
                  //                             ),
                  //
                  //                           ],
                  //                         ),
                  //                       ),
                  //                     ),
                  //
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //
                  //           );
                  //
                  //         },
                  //       ) : Center(child : CircularProgressIndicator()),
                  //     )
                  // ),


                ],

            ),
            ),
          ],
        ),
      ),

    );
  }
  Widget BoxCardDortmund() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageDortmund(
            detailDortmund: dortmund!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                dortmund!.players![0].strCutout.toString()
            ),
            Text(dortmund!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardBrighton() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageBrighton(
            detailBrighton: brighton!.players![0],
          ),
          )
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                brighton!.players![0].strCutout.toString()
            ),
            Text(brighton!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardMilan() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageMilan(
            detailMilan: milan!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                milan!.players![0].strCutout.toString()
            ),
            Text(milan!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardVillarreal() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageVillarreal(
            detailVillarreal: villarreal!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                villarreal!.players![0].strCutout.toString()
            ),
            Text(villarreal!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardEverton() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageEverton(
            detailEverton: everton!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                everton!.players![0].strCutout.toString()
            ),
            Text(everton!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardBarcelona() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageBarcelona(
            detailBarcelona: barcelona!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                barcelona!.players![0].strCutout.toString()
            ),
            Text(barcelona!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardCrystalPalace() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageCrystalPalace(
            detailCrystalPalace: crystalPalace!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                crystalPalace!.players![0].strCutout.toString()
            ),
            Text(crystalPalace!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardLiverpool() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageLiverpool(
            detailLiverpool: liverpool!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                liverpool!.players![0].strCutout.toString()
            ),
            Text(liverpool!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardManchesterCity() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageManchesterCity(
            detailManchester: manchesterCity!.players![0],
          ))
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                manchesterCity!.players![0].strCutout.toString()
            ),
            Text(manchesterCity!.players![0].strPlayer.toString(), style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardFattah() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => DetailPageFattah(
          )
          )
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 10,
        child: Column(
          children: [
            Image.asset(
                fotoFattah
            ),
            Text(nameFattah, style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
  Widget BoxCardCommon() => InkWell(
    onTap: (){
      Navigator.push(context
          ,MaterialPageRoute(builder: (context) => SearchPage(
          )
          )
      );
    },
    child: Card(
      color: Color.fromRGBO(236, 239, 239, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(30)),
      ),
      child: Container(
        width: 120,
        height: 100,
        child: Column(
          children: [
            Image.network(
                "https://www.thesportsdb.com/images/media/player/cutout/8ppixi1609190121.png"
            ),
            Text("Kang Ujang", style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),textAlign: TextAlign.end,
            ),
          ],

        ),
      ),
    ),
  );
}

class BodyContainer extends StatelessWidget {
  final Widget child;
  const BodyContainer({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(vertical: 7.7,horizontal: 7),
          height: size.height * 0.621,
          width: double.infinity,
          decoration:BoxDecoration(
            color: Colors.white,
          ),
          child: child,
        ),
      ],
    );
  }
}

class AppBarHome extends StatelessWidget {
  final Widget child;
  const AppBarHome({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.7, horizontal: 5),
      height: size.height * 0.3,
      width: double.infinity,
      decoration:BoxDecoration(
        color: kgreen,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
      ),
      child: child,
    );
  }
}

class BoxCardDortmound extends StatelessWidget  {
  final Widget child;
  const BoxCardDortmound({Key? key, required this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,


    );
  }
}
