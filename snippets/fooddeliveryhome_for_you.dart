import 'package:flutter/material.dart';

//for you builder
class ForYouBuilder extends StatelessWidget {
  const ForYouBuilder({super.key});

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
          "For You",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          child: ListView.builder(
            itemCount: 10,
            
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Recommended(),
                  Recommended(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

//for you
class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  
  bool favorouite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width*.65,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: const Color.fromARGB(255, 230, 229, 229),
                offset: Offset(2, 2)
              )
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*.3,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: Image.network("https://cdn.pixabay.com/photo/2021/12/30/11/33/italian-cuisine-6903774_1280.jpg",fit:BoxFit.fill),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("KFC",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),),
                    Text("Burger",style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Icon(Icons.timer_outlined,color: Colors.blueGrey,size: 18,),
                        SizedBox(width: 5,),
                        Text("25-30 min",style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        
        Positioned(
          top: 20,
          left: 20,
          child: InkWell(
            onTap: () {
              setState(() {
                favorouite =!favorouite;
              });
            },
            child: Icon(
              favorouite ?
                Icons.favorite
              : Icons.favorite_border_outlined,
              color: favorouite ? Colors.red : Colors.white,
              size: 28,
            ),
          )
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("40% OFF",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Text("up to \$80",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
          ],
        ))
      ],
    );
  }
}
    