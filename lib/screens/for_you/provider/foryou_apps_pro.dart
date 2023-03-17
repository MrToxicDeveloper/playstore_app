import 'package:flutter/material.dart';

class ForYouAppsPro extends ChangeNotifier {
  List Logo = [
    "assets/images/Insta.png",
    "assets/images/Face.png",
    "assets/images/What.png",
    "assets/images/SnapC.png",
  ];
  List name = [
    "Instagram",
    "Facebook",
    "WhatsApp",
    "Snapchat",
  ];
  List rate = [
    "4.5",
    "4.6",
    "4.8",
    "3.9",
  ];
  List size = [
    "85",
    "76",
    "88",
    "95",
  ];
  List Logo2 = [
    "assets/images/Insta.png",
    "assets/images/Face.png",
    "assets/images/What.png",
    "assets/images/SnapC.png",
  ];
  List name2 = [
    "Instagram",
    "Facebook",
    "WhatsApp",
    "Snapchat",
  ];
  List rate2 = [
    "4.5",
    "4.6",
    "4.8",
    "3.9",
  ];
  List size2 = [
    "85",
    "76",
    "88",
    "95",
  ];
  List Logo3 = [
    "assets/images/Insta.png",
    "assets/images/Face.png",
    "assets/images/What.png",
    "assets/images/SnapC.png",
  ];
  List name3 = [
    "Instagram",
    "Facebook",
    "WhatsApp",
    "Snapchat",
  ];
  List rate3 = [
    "4.5",
    "4.6",
    "4.8",
    "3.9",
  ];
  List size3 = [
    "85",
    "76",
    "88",
    "95",
  ];

  Widget RFY(int index, String name, String rate, String size, String Logo) {
    return Container(
      height: 125,
      width: 150,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset("${Logo}", fit: BoxFit.fitHeight)),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text("${name}"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("${rate}"),
                          Icon(Icons.star,size: 15,)
                        ],
                      ),
                      Text("${size} MB")
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
