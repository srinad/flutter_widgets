
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          
          SliverAppBar(
            elevation: 0,
            
            pinned: true,
            expandedHeight: 400,
            backgroundColor: Colors.white,
            toolbarHeight: 70,
            title: Container(
              
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    offset: Offset(2, 2,),
                    blurRadius: 5,
                  )
                ]
              ),
              width: MediaQuery.of(context).size.width*.9,
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Restaurants and Cusines",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey
                  ),
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              )
            ),

            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Container();
                  },));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 251, 219, 221),
                    child: Center(
                      child: Text(
                        "K",
                        style: TextStyle(
                          color: Color(0XFFE23744),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],

            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://st4.depositphotos.com/8646982/19670/v/450/depositphotos_196705650-stock-illustration-fast-food-hand-drawn-vector.jpg",fit: BoxFit.fill,),
            ),
          ),
          //FoodCardBody(),

          //add widgets inside sliver to box adapter as a body
          SliverToBoxAdapter(
            child: Container(
              child: Text("hello"),
            ),
          )
          
          
        ],
      )
      
    );
  }
}

