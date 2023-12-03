import 'package:flutter/material.dart';
import 'widgets/callContainer.dart';
import 'widgets/top_bar.dart';
import 'theme.dart';
class CallPage extends StatefulWidget {
  CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPage();
}

class _CallPage extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child :Column(
          children: [
            TopBar(guidecol: background1,pbhkcol: lightcolor),
            callContainer(context, "110", "assets/images/police.png", "police"),
            callContainer(context, "110", "assets/images/police.png", "police"),
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
      )));
  }
}