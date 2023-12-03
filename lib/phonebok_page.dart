import 'package:flutter/material.dart';
import 'guide_page.dart';
import 'theme.dart';
import 'widgets/top_bar.dart';

class PhoneBookPage extends StatefulWidget {
  const PhoneBookPage({super.key});

  @override
  State<PhoneBookPage> createState() => _PhoneBookPageState();
}

class _PhoneBookPageState extends State<PhoneBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            TopBar(guidecol: background1,pbhkcol: lightcolor),],
        )),
      ),
    );
  }
}