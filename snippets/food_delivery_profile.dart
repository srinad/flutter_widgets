
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

// add the sticky header dependency

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 251, 255),
      appBar: AppBar(

        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
        backgroundColor: Color.fromARGB(255, 246, 251, 255),
      ),
      body:ProfileScreenBody(),
    );
  }
}


//profile body

class ProfileScreenBody extends StatefulWidget {

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  List<String> titles = ["Favourites","Payments","Settings",];

  List<IconData> icons = [Icons.favorite_border,Icons.payment,Icons.settings];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 246, 251, 255),
      ),
      child: SingleChildScrollView(
        child: StickyHeader(
              header: Header(),
              content: Column(
                children: [
                  //grid cards
                  SizedBox(height: 10,),
                  GridItems(),
                  SizedBox(height: 10,),

                  //profile tile
                  ProfileTile(title: "Your Pofile",icon: Icons.person_2_outlined,isIn: true,decoration: true),
                  SizedBox(height: 10,),
                  ProfileTile(title: "Your Rating",icon: Icons.star_border,isIn: false,decoration: true,),

                  //listbuilders
                  FoodOrdersBuilder(heading: "Food Orders",),
                  FoodOrdersBuilder(heading: "Dining",),
                  FoodOrdersBuilder(heading: "Zomoland",),
                  FoodOrdersBuilder(heading: "Settings",),
                ],
              )
            )
            
      ),
    );
  }
}


//order builder

class FoodOrdersBuilder extends StatelessWidget {
  const FoodOrdersBuilder({super.key,required this.heading});

  final heading;
  @override
  Widget build(BuildContext context) {

    List<String> subtitles = ["Your orders","Favorite orders","Address book","Hidden Restaurant","Online ordering help"];
    List<IconData> subicons = [Icons.conveyor_belt,Icons.favorite_border,Icons.view_agenda,Icons.visibility_off,Icons.chat_outlined];


    return Stack(
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
    );
  }
}


//grid builder
class GridItems extends StatefulWidget {
  const GridItems({super.key});

  @override
  State<GridItems> createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  List<String> titles = ["Favourites","Payments","Settings",];

  List<IconData> icons = [Icons.favorite_border,Icons.payment,Icons.settings];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: titles.length,
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.2/1,
      ), 
      itemBuilder: (context, index) {
      return GridCards(title: titles[index],icon:icons[index] );
    },);
  }
}

class GridCards extends StatefulWidget {
  const GridCards({
    super.key,
    required this.title,
    required this.icon,
  });

  final title;
  final icon;

  @override
  State<GridCards> createState() => _GridCardsState();
}

class _GridCardsState extends State<GridCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.28,
      padding: EdgeInsets.symmetric(vertical: 15),
      margin: EdgeInsets.all(5),
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
          Icon(widget.icon,color: Colors.black,size: 30,),
          SizedBox(height: 10,),
          Text(widget.title,style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),)
        ],
      ),
    );
  }
}


//header
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: const Color.fromARGB(255, 214, 213, 213),
            // offset: Offset(2, 2),
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.lightBlue[50],
                  child: Center(
                    child: Text(
                      "K",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("KYAMA",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("view activity >",
                      style: TextStyle(
                        color: Color(0XFFE23744),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              )
            ),
            child: Row(
              children: [
                Icon(Icons.group,size: 25,color: Color.fromARGB(255, 252, 231, 126),),
                SizedBox(width: 10,),
                Text(
                  "Renew your Gold Membership",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 252, 231, 126),
                  ),
                ),
              ],
            ),
          )
        ],
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
    








