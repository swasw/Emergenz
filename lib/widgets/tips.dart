import 'package:emergenz/theme.dart';
import 'package:flutter/material.dart';
import 'package:emergenz/guide_page.dart';
import 'callContainer.dart';
import 'package:emergenz/callPage.dart';

class TipsTrivia extends StatefulWidget {
  const TipsTrivia({super.key});

  @override
  State<TipsTrivia> createState() => _TipsTriviaState();
}

class _TipsTriviaState extends State<TipsTrivia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tips & Trivia',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 12,),
            Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: listcard),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/island.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Island Escape Mastery:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Surviving on a Deserted Island",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
            Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: listcard),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/warzone.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Earthquake Essentials:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Staying Safe in Shaky Situations",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
