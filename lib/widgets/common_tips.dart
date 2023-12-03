// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:emergenz/theme.dart';
import 'package:flutter/material.dart';
import 'package:emergenz/guide_page.dart';
import 'callContainer.dart';
import 'package:emergenz/callPage.dart';
import 'package:url_launcher/url_launcher.dart';

class Common_Tips extends StatefulWidget {
  const Common_Tips({super.key});

  @override
  State<Common_Tips> createState() => _Common_TipsState();
}

class _Common_TipsState extends State<Common_Tips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Common Tips',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () async {
                    String url = '/basic-first-aid-procedures-1298578';
                    await launchUrl(Uri(
                      scheme: "https",
                      host: "www.verywellhealth.com",
                      path: url,
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: listcard),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/firstaid.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'First Aid',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    String url = '/blogs/readywise-blog/staying-calm-in-emergencies';
                    await launchUrl(Uri(
                      scheme: "https",
                      host: "readywise.com",
                      path: url,
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), color: listcard),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/orang_tapa.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Stay Calm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                   onTap: () async {
                    String url = '/blog/the-basics-of-handling-a-workplace-emergency';
                    await launchUrl(Uri(
                      scheme: "https",
                      host: "www.alert-software.com",
                      path: url,
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), color: listcard),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/prior.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Prioritize Safety',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
