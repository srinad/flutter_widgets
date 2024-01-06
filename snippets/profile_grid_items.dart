import "package:flutter/material.dart";



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
          "Grid Items",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: titles.length,
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2/1,
          ), 
          itemBuilder: (context, index) {
          return GridCards(title: titles[index],icon:icons[index] );
        },),
      ),
    );
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