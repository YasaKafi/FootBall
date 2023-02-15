import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:football/Model/PlayerModel.dart';

class BestPlayer {
  static String apiUrl = "https://v3.football.api-sports.io/players/topscorers?season=2018&league=61";

  // static String api_Key = "a32bd13e9d1c360309344be8dca166a8";

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "a32bd13e9d1c360309344be8dca166a8",
  };

}

class PlayerApi extends StatefulWidget {
  const PlayerApi({Key? key}) : super(key: key);

  @override
  State<PlayerApi> createState() => _PlayerApiState();
}

class _PlayerApiState extends State<PlayerApi> {
  PLayer? SoccerPlayer;
  bool isLoaded = true;


  @override
  void initState() {
    getAllListPLayer();

    super.initState();
  }

  void getAllListPLayer() async{
    setState(() {
      isLoaded = false;
    });

    final res = await http.get(
        Uri.parse(BestPlayer.apiUrl),
        headers: BestPlayer.headers);
    print("status code : " + res.statusCode.toString());

    SoccerPlayer =
        PLayer.fromJson(json.decode(res.body.toString()));
    print("player 0 : " + SoccerPlayer!.soccer![0].name.toString());

    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
    );
  }
}
