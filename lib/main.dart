import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/bottom_bar/provider/play_provider.dart';
import 'package:google_playstroe/screens/bottom_bar/view/bottombar_view.dart';
import 'package:google_playstroe/screens/for_you/provider/foryou_apps_pro.dart';
import 'package:google_playstroe/screens/for_you/provider/foryou_provider.dart';
import 'package:google_playstroe/screens/for_you/view/foryou_apps.dart';
import 'package:google_playstroe/screens/for_you/view/foryou_view.dart';
import 'package:google_playstroe/screens/top_charts/provider/top_chart_apps_pro.dart';
import 'package:google_playstroe/screens/top_charts/provider/top_chart_provider.dart';
import 'package:google_playstroe/screens/top_charts/view/top_chart_apps.dart';
import 'package:google_playstroe/screens/top_charts/view/top_chart_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlayPro(),
        ),
        ChangeNotifierProvider(
          create: (context) => TopChartAppsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ForYouAppsPro(),
        ),
        ChangeNotifierProvider(
          create: (context) => ForYouPro(),
        ),
        ChangeNotifierProvider(
          create: (context) => TopChartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => BottomBar(),
          'foryou': (context) => forYou(),
          'foryouapps': (context) => forYouApps(),
          'topchart': (context) => TopChart(),
          'topchartapps': (context) => TopChartApps(),
        },
      ),
    ),
  );
}
