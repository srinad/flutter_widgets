import 'package:flutter/material.dart';

class FoodOrdersBuilder extends StatelessWidget {
  const FoodOrdersBuilder({super.key,heading});

  final String heading = "FOOD ORDER";
  @override
  Widget build(BuildContext context) {

    List<String> subtitles = ["Your orders","Favorite orders","Address book","Hidden Restaurant","Online ordering help"];
    List<IconData> subicons = [Icons.conveyor_belt,Icons.favorite_border,Icons.view_agenda,Icons.visibility_off,Icons.chat_outlined];


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
          "Food Orders",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromARGB(255, 202, 202, 202),
                    offset: Offset(2, 2),
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20,),
                      Text(heading,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),),
                      
                    ],
                  ),
                  SizedBox(height: 10,),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ProfileTile(title: subtitles[index],icon: subicons[index],isIn: false,decoration: false,);
                    }, 
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.blueGrey[50],
                      );
                    }, 
                    itemCount: 5
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3,vertical: 15),
              decoration: BoxDecoration(
                color: Color(0XFFE23744),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key,required this.title,required this.icon,required this.isIn,required this.decoration});

  final title;
  final icon;
  final isIn;
  final decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}