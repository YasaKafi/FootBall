import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:football/Model/PremiereLeagueModel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:football/Model/DetailPage.dart';
import 'package:http/http.dart' as http;
import 'package:football/Navigation%20Bar/search.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  PremiereLeagueModel? premiereLeagueModel;
  bool isLoaded = true;

  @override
  void initState() {
    super.initState();
    getAllListPL();
  }

  void getAllListPL() async {
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
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 250, 234, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            // Container(
            //   width: 150,
            //   height: 150,
            //   alignment: Alignment.center,
            //   child: SvgPicture.asset('assets/images/TeamLineUp.svg'),
            // ),
            Align(
              alignment: Alignment(-0.7, -1.2),
              child: Text(
                "Search Teams",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment(0.0, 0.7),
                child: FieldFunction(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Here...',
                      ),
                    ),
                ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Color.fromRGBO(234, 250, 234, 1.0),
              width: double.infinity,
              height: size.height * 0.75,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: BodyContainer(
                      child: isLoaded? ListView.builder(
                        itemCount: premiereLeagueModel!.teams!.length,
                          itemBuilder: (BuildContext context, int index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => DetailPage(myTeam: premiereLeagueModel!.teams![index]))
                              );
                            },
                            child: Align(
                              child: Container(
                                height: 100,
                                width: 340,
                                margin: EdgeInsets.only(bottom: 5),
                                child: Card(
                                  color: Color.fromRGBO(236, 239, 239, 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 10,
                                        left:  13,
                                        bottom: 10,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.network(premiereLeagueModel!.teams![index].strTeamBadge.toString()),
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                          left: 75,
                                          child: Text(
                                            premiereLeagueModel!.teams![index].strTeam.toString(),
                                            style:  TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                            ),
                                          ),
                                      ),

                                      Positioned(
                                        top: 47,
                                          left: 75,
                                          child: Text(
                                            premiereLeagueModel!.teams![index].strStadium.toString(),

                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          );

                          },
                      )  : Center(child : CircularProgressIndicator()),),
                    ),
                ],
              ),
            )
          ],


        ),

      ),
    );
  }




  //
  //

}

class FieldFunction extends StatelessWidget {
  final Widget child;
  const FieldFunction({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3,horizontal: 18),
      height: size.height * 0.075,
      width: size.width * 0.85,
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 18),
      height: size.height,
      width: size.width * 0.95,
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      ),
      child: child,
    );
  }

}