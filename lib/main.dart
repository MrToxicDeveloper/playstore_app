import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/bottom_bar/provider/play_provider.dart';
import 'package:google_playstroe/screens/bottom_bar/view/bottombar_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlayPro(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => BottomBar(),
        },
      ),
    ),
  );
}
