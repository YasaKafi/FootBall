import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:football/Model/PremiereLeagueModel.dart';
import 'package:football/Model/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final  Teams myTeam;
  const DetailPage({Key? key, required this.myTeam, }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 250, 234, 1.0),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: [
                Positioned(
                    child: Image.network(widget.myTeam.strTeamBanner.toString())
                ),
                Positioned(
                  top: 50,
                    left: 94,
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(

                        color: Color.fromRGBO(236, 255, 230, 1.0),

                          borderRadius: BorderRadius.circular(90),

                      ),
                    ),
                ),
                Positioned(
                  top: 45,
                  left: 84,
                  child: Container(

                    margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                    height: 140,
                    width: 140,
                    child: Image.network(widget.myTeam.strTeamBadge.toString()),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 142,
                  child: Text("${widget.myTeam.strTeam}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 24,
                    ),) ,
                ),
            Positioned(
              top: 270,
                left: 25,
                child: Container(
                  height: 140,
                  width: 190,
                  child: Image.network(widget.myTeam.strStadiumThumb.toString()),
                )
            ),
            Positioned(
                top: 400,
                left: 80,
                child: Text(
                  "Stadium",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins'
                  ),
                )
            ),
            Positioned(
                top: 282,
                right: 20,
                child: Container(
                  height: 118,
                  width: 118,
                  child: Card(
                      color: Color.fromRGBO(236, 239, 239, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      child: Image.network(widget.myTeam.strTeamJersey.toString(),)
                  ),
                )
            ),
            Positioned(
                top: 400,
                right: 50,
                child: Text(
                  "Jersey",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins'
                  ),
                )
            ),
            Align(
              alignment: Alignment(0.0, 1),
              child: BodyContainer(
                child: Stack(
                  children: [
                    Positioned(
                        top: 15,
                        left: 5,
                        child: Text(
                          "League :",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            fontSize: 16,
                          ),
                        )
                    ),
                    Positioned(
                        top: 15,
                        left: 75,
                        child: Text(
                          "${widget.myTeam.strLeague}",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            fontSize: 15,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 45,
                        left: 5,
                        child: Text("Stadium Name : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 16,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 45,
                        left: 135,
                        child: Text(
                          "${widget.myTeam.strStadium}",
                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 75,
                        left: 5,
                        child: Text("Formed Year : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 16,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 75,
                        left: 119,
                        child: Text(
                          "${widget.myTeam.intFormedYear}",
                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 103,
                        left: 5,
                        child: Text("Stadium Location : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 104.5,
                        left: 140,
                        child: Text(
                          "${widget.myTeam.strStadiumLocation}",

                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 14,
                          ),
                        ),
                    ),
                    Positioned(
                        top: 140,
                        left: 3,
                        child: Text("Description : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 20,
                          ),
                        ),
                    ),
                    Align(
                        alignment: Alignment(0.0, 0.95),
                        child : DescriptionContainer(
                            child: SingleChildScrollView(
                                child: Text("${widget.myTeam.strDescriptionEN}")
                            )
                        )
                    )

                  ],
                ),
              ),
            ),


              ],
            )
      ),
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
      padding: EdgeInsets.symmetric(vertical: 3,horizontal: 12),
      height: size.height * 0.4,
      width: size.width * 0.93,
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}

class DescriptionContainer extends StatelessWidget {
  final Widget child;
  const DescriptionContainer({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.7,horizontal: 18),
      height: size.height * 0.15,
      width: size.width * 0.9,
      decoration:BoxDecoration(
        color: Color.fromRGBO(224, 230, 231, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}