import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/for_you/view/foryou_view.dart';
import 'package:provider/provider.dart';

import '../../bottom_bar/provider/play_provider.dart';

class TabBarV extends StatefulWidget {
  const TabBarV({Key? key}) : super(key: key);

  @override
  State<TabBarV> createState() => _TabBarVState();
}

class _TabBarVState extends State<TabBarV> {

  List screens = [forYou()];

  PlayPro? proTrue;
  PlayPro? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<PlayPro>(context, listen: true);
    proFalse = Provider.of<PlayPro>(context, listen: false);
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3,
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu),
                        SizedBox(
                          width: 17,
                        ),
                        Text(
                          "Search for apps & games",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.mic_none),
                  ],
                ),
              ),
              TabBar(
                onTap: (value) => proFalse!.ind = value,
                indicatorColor: Colors.green,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text(
                      "For you",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Top charts",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Divider(),
              Expanded(child: screens[proTrue!.ind]),
            ],
          ),
        ),
      ),
    );
  }
}
