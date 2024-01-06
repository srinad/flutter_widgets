import 'package:flutter/material.dart';

class CancellationPolicy extends StatelessWidget {
  const CancellationPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
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
          "HeadingText",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "100% cancellation fee will be applicable if you decide to cancel the order anytime after order placement",
          style: TextStyle(
            fontSize: 16,
            color: Colors.blueGrey,
          ),
        ),
          ),
      ),
    );
  }
}