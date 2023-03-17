import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_playstroe/screens/top_charts/provider/top_chart_provider.dart';
import 'package:provider/provider.dart';

import '../../for_you/provider/foryou_provider.dart';

class TopChart extends StatefulWidget {
  const TopChart({Key? key}) : super(key: key);

  @override
  State<TopChart> createState() => _TopChartState();
}

class _TopChartState extends State<TopChart> {
  TopChartProvider? proTrue;
  TopChartProvider? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<TopChartProvider>(context, listen: true);
    proFalse = Provider.of<TopChartProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListTile(leading: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("${index+1}"),
                    SizedBox(width: 20,),
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset("${proFalse!.Logo[index]}")),
                  ],
                )),
              title: Text("${proFalse!.name[index]}"),
              subtitle: Text("${proFalse!.size[index]} MB"),
            );
          },
        ),
      ),
    );
  }
}
