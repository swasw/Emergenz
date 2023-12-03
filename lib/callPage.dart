import 'package:flutter/material.dart';
import 'widgets/callContainer.dart';
import 'widgets/top_bar.dart';
class CallPage extends StatefulWidget {
  CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPage();
}

class _CallPage extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: SingleChildScrollView(
          child: Column(
            
          ),
        ),
      ));
  }
}