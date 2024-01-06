import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  ProfileTile({super.key,title,icon,isIn,decoration});

  final title = "Add Ons";
  final icon = Icons.sailing_rounded;
  final isIn = true;
  final decoration = true;
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
          "Profile tile",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
          decoration: decoration ? BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Color.fromARGB(255, 202, 202, 202),
                offset: Offset(2, 2),
              )
            ]
          ) : null,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 237, 248, 254),
              child: Center(
                child: Icon(icon,color: Colors.blueGrey,size: 24,),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),),
                isIn? Container(
                  padding: EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 231, 232),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("32% completed",style: TextStyle(
                  color: Color(0XFFE23744),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),),
                ):Text(""),
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blueGrey,size: 20,),
          ),
        ),
      ),
    );
  }
}