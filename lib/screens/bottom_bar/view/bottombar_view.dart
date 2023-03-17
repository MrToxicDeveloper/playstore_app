import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/bottom_bar/provider/play_provider.dart';
import 'package:provider/provider.dart';

import '../../tab_bar/view/tab_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  PlayPro? proTrue;
  PlayPro? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<PlayPro>(context, listen: true);
    proFalse = Provider.of<PlayPro>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: proTrue!.i,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (value) {
            proFalse!.change(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(proTrue!.game == false
                  ? CupertinoIcons.game_controller
                  : CupertinoIcons.game_controller_solid),
              label: "Games",
            ),
            BottomNavigationBarItem(
              icon: Icon(proTrue!.app == false
                  ? CupertinoIcons.square_grid_2x2
                  : CupertinoIcons.square_grid_2x2_fill),
              label: "Apps",
            ),
          ],
        ),
        body: TabBarV(),
      ),
    );
  }
}
