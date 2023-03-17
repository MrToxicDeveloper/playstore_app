import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/for_you/provider/foryou_provider.dart';
import 'package:provider/provider.dart';

class forYou extends StatefulWidget {
  const forYou({Key? key}) : super(key: key);

  @override
  State<forYou> createState() => _forYouState();
}

class _forYouState extends State<forYou> {
  ForYouPro? proTrue;
  ForYouPro? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<ForYouPro>(context, listen: true);
    proFalse = Provider.of<ForYouPro>(context, listen: false);
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
                        proFalse!.atb2[index] as String,
                        proFalse!.size2[index] as String,
                        proFalse!.Logo2[index] as String,
                        proFalse!.banner2[index] as String);
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
                        proFalse!.atb[index] as String,
                        proFalse!.size[index] as String,
                        proFalse!.Logo[index] as String,
                        proFalse!.banner[index] as String);
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
                        proFalse!.atb3[index] as String,
                        proFalse!.size3[index] as String,
                        proFalse!.Logo3[index] as String,
                        proFalse!.banner3[index] as String);
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
