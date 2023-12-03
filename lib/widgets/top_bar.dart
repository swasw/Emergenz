import 'package:emergenz/theme.dart';
import 'package:flutter/material.dart';
import 'package:emergenz/guide_page.dart';
import 'package:emergenz/phonebok_page.dart';

class TopBar extends StatefulWidget {
  Color guidecol = lightcolor;
  Color pbhkcol = background1;
  TopBar({super.key, required this.guidecol, required this.pbhkcol});

  @override
  State<TopBar> createState() => _TopBarState();
}

navigator2(var y, context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => y));
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: background1,
      ),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Emergenz',
            style: TextStyle(
              color: lightcolor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                navigator2(GuidePage(), context);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: widget.guidecol, width: 3))),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Guide',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                navigator2(PhoneBookPage(), context);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: widget.pbhkcol, width: 3))),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Phonebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
