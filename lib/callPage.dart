import 'package:flutter/material.dart';
import 'widgets/callContainer.dart';
import 'widgets/top_bar.dart';
import 'theme.dart';
import 'dart:ui' as ui;
class CallPage extends StatefulWidget {
  CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPage();
}

class _CallPage extends State<CallPage> {
  MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(color: backgroundUtama),child:SingleChildScrollView(
          child :Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(guidecol: background1,pbhkcol: lightcolor),
            callContainer(context, "110", "assets/images/police.png", "Polisi"),
            callContainer(context, "119", "assets/images/ambulan.png", "Ambulan"),
            callContainer(context, "113", "assets/images/pemadam.png", "Pemadam Kebakaran"),
            callContainer(context, "112", "images/umum.png", "Umum"),
            callContainer(context, "115", "assets/images/basarnas.png", "Basarnas"),
            callContainer(context, "135", "images/pertamina.png", "Pertamina DS"),
            callContainer(context, "14080", "assets/images/jasamarga.png", "Jasamarga"),
            ],
        )
        //   child:Container(padding: EdgeInsets.all(15.0),
        //     child:Column(mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       TopBar(guidecol: background1,pbhkcol: lightcolor),
        //       callContainer(context, "110", "assets/images/police.png", "police"),
        //       callContainer(context, "110", "assets/images/police.png", "police")
        //     ],
        //   )  
        // ),
      )
      )
      )
      );
  }
}