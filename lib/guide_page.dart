import 'package:emergenz/widgets/tips.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'widgets/top_bar.dart';
import 'widgets/common_tips.dart';
class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            TopBar(guidecol: lightcolor,pbhkcol: background1),
            Common_Tips(),
            TipsTrivia(),
            ],
            
        )),
      ),
    );
  }
}
