import 'package:flutter/material.dart';


class PLayer {
  List<soccerPlayer>? soccer;

  PLayer({this.soccer});

  PLayer.fromJson(Map<String, dynamic> json) {
    if (json['soccer'] != null) {
      soccer = <soccerPlayer>[];
      json['soccer'].forEach((v) {
        soccer!.add(new soccerPlayer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.soccer != null) {
      data['soccer'] = this.soccer!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class soccerPlayer{
  String? name;
  String? firstname;
  String? lastname;
  int? age;
  String? date;
  String? place;
  String? country;
  String? photo;

  soccerPlayer({
    this.name,
    this.firstname,
    this.lastname,
    this.age,
    this.date,
    this.place,
    this.country,
    this.photo});

  soccerPlayer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    age = json['age'];
    date = json['date'];
    place = json['place'];
    country = json['country'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['age'] = this.age;
    data['date'] = this.date;
    data['place'] = this.place;
    data['country'] = this.country;
    data['photo'] = this.photo;

    return data;
  }
}



