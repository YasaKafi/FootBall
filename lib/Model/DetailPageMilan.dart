import 'package:flutter/material.dart';
import 'package:football/Model/MilanModel.dart';

class DetailPageMilan extends StatefulWidget {
  final Players detailMilan;
  const DetailPageMilan({Key? key, required this.detailMilan}) : super(key: key);

  @override
  State<DetailPageMilan> createState() => _DetailPageMilanState();
}

class _DetailPageMilanState extends State<DetailPageMilan> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 250, 234, 1.0),
      body:Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
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
                  child: Image.network(widget.detailMilan.strCutout.toString()),
                ),
              ),

              Positioned(
                top: 240,
                left: 122,
                child: Text("${widget.detailMilan.strPlayer}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
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
                            "Date Born :  ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 16,
                            ),
                          )
                      ),
                      Positioned(
                        top: 15,
                        left: 90,
                        child: Text(
                          "${widget.detailMilan.dateBorn}",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45,
                        left: 5,
                        child: Text("Birth Location : ",
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
                          "${widget.detailMilan.strBirthLocation}",
                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 75,
                        left: 5,
                        child: Text("Date Signed : ",
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
                          "${widget.detailMilan.dateSigned}",
                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 103,
                        left: 5,
                        child: Text("Nationality : ",
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
                          "${widget.detailMilan.strNationality}",

                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 133,
                        left: 5,
                        child: Text("Team : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 134.5,
                        left: 140,
                        child: Text(
                          "${widget.detailMilan.strTeam}",

                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 163,
                        left: 5,
                        child: Text("Position : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 164.5,
                        left: 140,
                        child: Text(
                          "${widget.detailMilan.strPosition}",

                          style: TextStyle(
                            color: Color.fromRGBO(70, 62, 62, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 190,
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
                                  child: Text("${widget.detailMilan.strDescriptionEN}")
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
      height: size.height * 0.6,
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
      height: size.height * 0.3,
      width: size.width * 0.9,
      decoration:BoxDecoration(
        color: Color.fromRGBO(224, 230, 231, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}