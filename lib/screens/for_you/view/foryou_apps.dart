import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/for_you/provider/foryou_provider.dart';
import 'package:provider/provider.dart';

import '../provider/foryou_apps_pro.dart';

class forYouApps extends StatefulWidget {
  const forYouApps({Key? key}) : super(key: key);

  @override
  State<forYouApps> createState() => _forYouAppsState();
}

class _forYouAppsState extends State<forYouApps> {
  ForYouAppsPro? proTrue;
  ForYouAppsPro? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<ForYouAppsPro>(context, listen: true);
    proFalse = Provider.of<ForYouAppsPro>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Premium games",
                  // style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return proFalse!.RFY(
                      index,
                      proFalse!.name2[index] as String,
                      proFalse!.rate2[index] as String,
                      proFalse!.size2[index] as String,
                      proFalse!.Logo2[index] as String,
                    );
                  },
                  itemCount: 4,
                ),
              ),
              ListTile(
                title: Text(
                  "Recommended for you",
                  // style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return proFalse!.RFY(
                        index,
                        proFalse!.name[index] as String,
                        proFalse!.rate[index] as String,
                        proFalse!.size[index] as String,
                        proFalse!.Logo[index] as String);
                  },
                  itemCount: 4,
                ),
              ),
              ListTile(
                title: Text(
                  "Non-stop action",
                  // style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return proFalse!.RFY(
                        index,
                        proFalse!.name3[index] as String,
                        proFalse!.rate3[index] as String,
                        proFalse!.size3[index] as String,
                        proFalse!.Logo3[index] as String);
                  },
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
