class Liverpool {
  List<Players>? players;

  Liverpool({this.players});

  Liverpool.fromJson(Map<String, dynamic> json) {
    if (json['players'] != null) {
      players = <Players>[];
      json['players'].forEach((v) {
        players!.add(new Players.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.players != null) {
      data['players'] = this.players!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Players {
  String? idPlayer;
  String? idTeam;
  String? idTeam2;
  Null? idTeamNational;
  String? idSoccerXML;
  String? idAPIfootball;
  Null? idPlayerManager;
  String? strNationality;
  String? strPlayer;
  Null? strPlayerAlternate;
  String? strTeam;
  String? strTeam2;
  String? strSport;
  String? intSoccerXMLTeamID;
  String? dateBorn;
  String? strNumber;
  String? dateSigned;
  String? strSigning;
  String? strWage;
  String? strOutfitter;
  String? strKit;
  String? strAgent;
  String? strBirthLocation;
  Null? strEthnicity;
  String? strStatus;
  String? strDescriptionEN;
  Null? strDescriptionDE;
  Null? strDescriptionFR;
  Null? strDescriptionCN;
  Null? strDescriptionIT;
  Null? strDescriptionJP;
  Null? strDescriptionRU;
  Null? strDescriptionES;
  Null? strDescriptionPT;
  Null? strDescriptionSE;
  Null? strDescriptionNL;
  Null? strDescriptionHU;
  Null? strDescriptionNO;
  Null? strDescriptionIL;
  Null? strDescriptionPL;
  String? strGender;
  String? strSide;
  String? strPosition;
  Null? strCollege;
  String? strFacebook;
  String? strWebsite;
  String? strTwitter;
  String? strInstagram;
  String? strYoutube;
  String? strHeight;
  String? strWeight;
  String? intLoved;
  String? strThumb;
  String? strCutout;
  String? strRender;
  Null? strBanner;
  String? strFanart1;
  String? strFanart2;
  String? strFanart3;
  Null? strFanart4;
  String? strCreativeCommons;
  String? strLocked;

  Players(
      {this.idPlayer,
        this.idTeam,
        this.idTeam2,
        this.idTeamNational,
        this.idSoccerXML,
        this.idAPIfootball,
        this.idPlayerManager,
        this.strNationality,
        this.strPlayer,
        this.strPlayerAlternate,
        this.strTeam,
        this.strTeam2,
        this.strSport,
        this.intSoccerXMLTeamID,
        this.dateBorn,
        this.strNumber,
        this.dateSigned,
        this.strSigning,
        this.strWage,
        this.strOutfitter,
        this.strKit,
        this.strAgent,
        this.strBirthLocation,
        this.strEthnicity,
        this.strStatus,
        this.strDescriptionEN,
        this.strDescriptionDE,
        this.strDescriptionFR,
        this.strDescriptionCN,
        this.strDescriptionIT,
        this.strDescriptionJP,
        this.strDescriptionRU,
        this.strDescriptionES,
        this.strDescriptionPT,
        this.strDescriptionSE,
        this.strDescriptionNL,
        this.strDescriptionHU,
        this.strDescriptionNO,
        this.strDescriptionIL,
        this.strDescriptionPL,
        this.strGender,
        this.strSide,
        this.strPosition,
        this.strCollege,
        this.strFacebook,
        this.strWebsite,
        this.strTwitter,
        this.strInstagram,
        this.strYoutube,
        this.strHeight,
        this.strWeight,
        this.intLoved,
        this.strThumb,
        this.strCutout,
        this.strRender,
        this.strBanner,
        this.strFanart1,
        this.strFanart2,
        this.strFanart3,
        this.strFanart4,
        this.strCreativeCommons,
        this.strLocked});

  Players.fromJson(Map<String, dynamic> json) {
    idPlayer = json['idPlayer'];
    idTeam = json['idTeam'];
    idTeam2 = json['idTeam2'];
    idTeamNational = json['idTeamNational'];
    idSoccerXML = json['idSoccerXML'];
    idAPIfootball = json['idAPIfootball'];
    idPlayerManager = json['idPlayerManager'];
    strNationality = json['strNationality'];
    strPlayer = json['strPlayer'];
    strPlayerAlternate = json['strPlayerAlternate'];
    strTeam = json['strTeam'];
    strTeam2 = json['strTeam2'];
    strSport = json['strSport'];
    intSoccerXMLTeamID = json['intSoccerXMLTeamID'];
    dateBorn = json['dateBorn'];
    strNumber = json['strNumber'];
    dateSigned = json['dateSigned'];
    strSigning = json['strSigning'];
    strWage = json['strWage'];
    strOutfitter = json['strOutfitter'];
    strKit = json['strKit'];
    strAgent = json['strAgent'];
    strBirthLocation = json['strBirthLocation'];
    strEthnicity = json['strEthnicity'];
    strStatus = json['strStatus'];
    strDescriptionEN = json['strDescriptionEN'];
    strDescriptionDE = json['strDescriptionDE'];
    strDescriptionFR = json['strDescriptionFR'];
    strDescriptionCN = json['strDescriptionCN'];
    strDescriptionIT = json['strDescriptionIT'];
    strDescriptionJP = json['strDescriptionJP'];
    strDescriptionRU = json['strDescriptionRU'];
    strDescriptionES = json['strDescriptionES'];
    strDescriptionPT = json['strDescriptionPT'];
    strDescriptionSE = json['strDescriptionSE'];
    strDescriptionNL = json['strDescriptionNL'];
    strDescriptionHU = json['strDescriptionHU'];
    strDescriptionNO = json['strDescriptionNO'];
    strDescriptionIL = json['strDescriptionIL'];
    strDescriptionPL = json['strDescriptionPL'];
    strGender = json['strGender'];
    strSide = json['strSide'];
    strPosition = json['strPosition'];
    strCollege = json['strCollege'];
    strFacebook = json['strFacebook'];
    strWebsite = json['strWebsite'];
    strTwitter = json['strTwitter'];
    strInstagram = json['strInstagram'];
    strYoutube = json['strYoutube'];
    strHeight = json['strHeight'];
    strWeight = json['strWeight'];
    intLoved = json['intLoved'];
    strThumb = json['strThumb'];
    strCutout = json['strCutout'];
    strRender = json['strRender'];
    strBanner = json['strBanner'];
    strFanart1 = json['strFanart1'];
    strFanart2 = json['strFanart2'];
    strFanart3 = json['strFanart3'];
    strFanart4 = json['strFanart4'];
    strCreativeCommons = json['strCreativeCommons'];
    strLocked = json['strLocked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idPlayer'] = this.idPlayer;
    data['idTeam'] = this.idTeam;
    data['idTeam2'] = this.idTeam2;
    data['idTeamNational'] = this.idTeamNational;
    data['idSoccerXML'] = this.idSoccerXML;
    data['idAPIfootball'] = this.idAPIfootball;
    data['idPlayerManager'] = this.idPlayerManager;
    data['strNationality'] = this.strNationality;
    data['strPlayer'] = this.strPlayer;
    data['strPlayerAlternate'] = this.strPlayerAlternate;
    data['strTeam'] = this.strTeam;
    data['strTeam2'] = this.strTeam2;
    data['strSport'] = this.strSport;
    data['intSoccerXMLTeamID'] = this.intSoccerXMLTeamID;
    data['dateBorn'] = this.dateBorn;
    data['strNumber'] = this.strNumber;
    data['dateSigned'] = this.dateSigned;
    data['strSigning'] = this.strSigning;
    data['strWage'] = this.strWage;
    data['strOutfitter'] = this.strOutfitter;
    data['strKit'] = this.strKit;
    data['strAgent'] = this.strAgent;
    data['strBirthLocation'] = this.strBirthLocation;
    data['strEthnicity'] = this.strEthnicity;
    data['strStatus'] = this.strStatus;
    data['strDescriptionEN'] = this.strDescriptionEN;
    data['strDescriptionDE'] = this.strDescriptionDE;
    data['strDescriptionFR'] = this.strDescriptionFR;
    data['strDescriptionCN'] = this.strDescriptionCN;
    data['strDescriptionIT'] = this.strDescriptionIT;
    data['strDescriptionJP'] = this.strDescriptionJP;
    data['strDescriptionRU'] = this.strDescriptionRU;
    data['strDescriptionES'] = this.strDescriptionES;
    data['strDescriptionPT'] = this.strDescriptionPT;
    data['strDescriptionSE'] = this.strDescriptionSE;
    data['strDescriptionNL'] = this.strDescriptionNL;
    data['strDescriptionHU'] = this.strDescriptionHU;
    data['strDescriptionNO'] = this.strDescriptionNO;
    data['strDescriptionIL'] = this.strDescriptionIL;
    data['strDescriptionPL'] = this.strDescriptionPL;
    data['strGender'] = this.strGender;
    data['strSide'] = this.strSide;
    data['strPosition'] = this.strPosition;
    data['strCollege'] = this.strCollege;
    data['strFacebook'] = this.strFacebook;
    data['strWebsite'] = this.strWebsite;
    data['strTwitter'] = this.strTwitter;
    data['strInstagram'] = this.strInstagram;
    data['strYoutube'] = this.strYoutube;
    data['strHeight'] = this.strHeight;
    data['strWeight'] = this.strWeight;
    data['intLoved'] = this.intLoved;
    data['strThumb'] = this.strThumb;
    data['strCutout'] = this.strCutout;
    data['strRender'] = this.strRender;
    data['strBanner'] = this.strBanner;
    data['strFanart1'] = this.strFanart1;
    data['strFanart2'] = this.strFanart2;
    data['strFanart3'] = this.strFanart3;
    data['strFanart4'] = this.strFanart4;
    data['strCreativeCommons'] = this.strCreativeCommons;
    data['strLocked'] = this.strLocked;
    return data;
  }
}
