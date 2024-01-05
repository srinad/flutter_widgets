import 'package:flutter/material.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExporeMenuState();
}

class _ExporeMenuState extends State<ExploreMenu> {
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
          "Explore Menu",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Container();
                      },));
                    },
                    child: Explore(color: Colors.blue,icon: Icons.discount,subtitle: "Flat discounts",title: "Offers")),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Container();
                      },));
                    },
                    child: Explore(color: Color(0XFFE23744),icon: Icons.restaurant,subtitle: "Selections",title: "Gourmet")),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network("https://cdn.pixabay.com/photo/2020/02/11/13/57/text-4839644_1280.jpg",fit: BoxFit.fill,))
              )
            ],
          ),
        ),
      ),
    );

    
  }
}

class Explore extends StatefulWidget {
  const Explore({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width : MediaQuery.of(context).size.width*.45,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: widget.color
                      ),
                    ),
                    SizedBox(height: 4,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3,vertical: 0),
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                widget.icon,
                color: widget.color,
                size: 25,
              ),
              
            ],
          ),
          
        ],
      ),
    );
  }
}