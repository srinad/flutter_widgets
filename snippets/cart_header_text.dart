import 'package:flutter/material.dart';

//header text
class HeaderText extends StatelessWidget {
  const HeaderText({super.key,required this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Icon(
        //   Icons.arrow_back_ios_new_rounded,
        //   color: Colors.black,
        // ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Heading Text",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 14,
              letterSpacing: 2,
              fontWeight: FontWeight.w500,
            ),
          )
        ),
      ),
    );
  }
}