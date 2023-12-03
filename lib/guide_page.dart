import 'package:flutter/material.dart';
import 'theme.dart';
import 'widgets/top_bar.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            TopBar(guidecol: lightcolor,pbhkcol: background1),],
        )),
      ),
    );
  }
}
