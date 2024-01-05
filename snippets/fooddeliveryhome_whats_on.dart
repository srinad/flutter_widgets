import 'package:flutter/material.dart';

class WhatsOnBuilder extends StatelessWidget {
  const WhatsOnBuilder({super.key});

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
          "Whats On",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 250,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return WhatsOnCard();
            },
          ),
        ),
      ),
    );
  }
}

//WHATS ON YOUR MIND
class WhatsOnCard extends StatefulWidget {
  const WhatsOnCard({super.key});

  @override
  State<WhatsOnCard> createState() => _WhatsOnCardState();
}

class _WhatsOnCardState extends State<WhatsOnCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.25,
            child: Column(
              children: [
                Image.network("https://cdn.pixabay.com/photo/2018/04/17/23/04/food-3329080_1280.png"),
                SizedBox(height: 5,),
                Text("Biryani",style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width*.25,
            child: Column(
              children: [
                Image.network("https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285_1280.png"),
                SizedBox(height: 5,),
                Text("Biryani",style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}