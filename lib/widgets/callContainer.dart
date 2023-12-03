import 'package:flutter/material.dart';
import '../callPage.dart';
import '../theme.dart';
import 'dart:ui' as ui;
import 'package:url_launcher/url_launcher.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("device unavailable"),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CallPage()),
                    (Route<dynamic> route) =>
                        false, // In this case, remove all routes
                  );
                },
                child: Text("close"))
          ],
        ),
      );
    },
  );
}

void _launchPhone(BuildContext context, String paths) async {
  Uri tes = Uri(
    scheme: "tel",
    path: paths,
  );
  if (await canLaunchUrl(tes)) {
    await launchUrl(tes);
  } else {
    showLoadingDialog(context);
  }
}

Widget callContainer(
    BuildContext context, String paths, String imagePath, String name) {
  var mediaQueryData = MediaQuery.of(context).size.width;
  return InkWell(
      onTap: () {
        _launchPhone(context, paths);
      },
      child: Container(
        height: 155,
        width: mediaQueryData,
        decoration: BoxDecoration(
            color: backgroundCard,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        margin: EdgeInsets.all(28.0),
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: [
            Image.asset(imagePath,
                width: mediaQueryData*1/4),
            SizedBox(width: 10,),
            Container(
              width: mediaQueryData*1/2,
              decoration: BoxDecoration(),
              child: Center(
                  child: Column(children: [
                Center(
                    child: Text(name,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            color: backgroundUtama),
                        height: 60,
                        width: 400,
                        child: Center(
                            child: Text(paths,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                            color: background1),
                        width: 600,
                        height: 40,
                        child: Center(
                            child: Text("call",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      )
                    ],
                  ),
                )
              ])),
            )
          ],
        ),
      ));
}
