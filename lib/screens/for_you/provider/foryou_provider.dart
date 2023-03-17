import 'package:flutter/material.dart';

class ForYouPro extends ChangeNotifier {
  List banner = [
    "assets/images/FF.jpg",
    "assets/images/BGMI.jpg",
    "assets/images/COD.jpg",
    "assets/images/COC.jpg",
  ];
  List Logo = [
    "assets/images/FFLogo.jpg",
    "assets/images/BGMILogo.png",
    "assets/images/CODLogo.png",
    "assets/images/COCLogo.png",
  ];
  List name = [
    "Free Fire",
    "BGMI",
    "Call of Duty",
    "Clash of Clans",
  ];
  List atb = [
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
  ];
  List size = [
    "516",
    "765",
    "999",
    "290",
  ];

  List banner3 = [
    "assets/images/FF.jpg",
    "assets/images/BGMI.jpg",
    "assets/images/COD.jpg",
    "assets/images/COC.jpg",
  ];
  List Logo3 = [
    "assets/images/FFLogo.jpg",
    "assets/images/BGMILogo.png",
    "assets/images/CODLogo.png",
    "assets/images/COCLogo.png",
  ];
  List name3 = [
    "Free Fire",
    "BGMI",
    "Call of Duty",
    "Clash of Clans",
  ];
  List atb3 = [
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
  ];
  List size3 = [
    "516",
    "765",
    "999",
    "290",
  ];

  List banner2 = [
    "assets/images/FF.jpg",
    "assets/images/BGMI.jpg",
    "assets/images/COD.jpg",
    "assets/images/COC.jpg",
  ];
  List Logo2 = [
    "assets/images/FFLogo.jpg",
    "assets/images/BGMILogo.png",
    "assets/images/CODLogo.png",
    "assets/images/COCLogo.png",
  ];
  List name2 = [
    "Free Fire",
    "BGMI",
    "Call of Duty",
    "Clash of Clans",
  ];
  List atb2 = [
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
    "Action | Tectical | Casual",
  ];
  List size2 = [
    "516",
    "765",
    "999",
    "290",
  ];

  Widget RFY(int index, String name,String atb,String size,String Logo,String banner) {
    return Container(
      height: 125,
      width: 260,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset("${banner}", fit: BoxFit.fitWidth)),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset("${Logo}")),
                  title: Text("${name}"),
                  subtitle: Text("${atb}\n${size} MB"),
                ),
              )),
        ],
      ),
    );
  }
}
