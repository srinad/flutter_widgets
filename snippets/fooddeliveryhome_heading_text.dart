import 'package:flutter/material.dart';

//heading Text
class HeadingText extends StatelessWidget {
  const HeadingText({super.key,title});

  final String title= "HELLO";

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
          "HeadingText",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
              width: MediaQuery.of(context).size.width,
              child: Divider(
                color: Colors.grey.shade100,
              )
            ),
            Positioned(
              top: 25,
              child: Center(
                child: Container(
                  
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,style: TextStyle(
                        color: Colors.blueGrey,
                        backgroundColor: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 3,
                      ),),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
