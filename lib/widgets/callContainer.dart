import 'package:flutter/material.dart';
import '../callPage.dart';
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
                    } ,
                    child: Text("close"))
            ],
          ),
        );
      },
    );
  }
 void _launchPhone(BuildContext context,String paths) async {
    Uri tes = Uri(
      scheme: "tel",
      path: "paths",
    );
    if (await canLaunchUrl(tes)) {
      await launchUrl(tes);
    } else {
      showLoadingDialog(context);
    }
  }
Widget callContainer(){
  return Container(

  );
}