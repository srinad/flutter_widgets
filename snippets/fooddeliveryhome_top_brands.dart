import 'package:flutter/material.dart';

//topbrands builder
class TopBrandsBuilder extends StatelessWidget {
  const TopBrandsBuilder({super.key});

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
          "Top Brands",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 70),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Color.fromARGB(255, 223, 241, 249),
                  Color.fromARGB(255, 250, 253, 255),
                ])
              ),
              height: 420,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return TopBrands();
                },
              ),
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text("Top brands loved by customers",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

//topbrands
class TopBrands extends StatefulWidget {
  const TopBrands({super.key});

  @override
  State<TopBrands> createState() => _TopBrandsState();
}

class _TopBrandsState extends State<TopBrands> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      width: MediaQuery.of(context).size.width*.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: const Color.fromARGB(255, 225, 224, 224),
            offset: Offset(2, 2),
          ),
        ]
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.45,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network("https://cdn.pixabay.com/photo/2016/05/04/19/05/cookies-1372607_1280.jpg",fit: BoxFit.fill,),
            ),
          ),
          //content
          Container(
            width: MediaQuery.of(context).size.width*.45,
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width*.28,
                      child: Text("Hotel Nakshatra Grand",style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 29, 114, 32),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Text("4.0",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                          ),),
                          SizedBox(width: 3,),
                          Icon(Icons.star,color: Colors.white,size: 11,)
                        ],
                      ),
                      
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.timer_outlined,color: Colors.blueGrey,size: 15,),
                    SizedBox(width: 5,),
                    Text("25-30 min, 5.5 km",style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.discount,color: Color.fromARGB(255, 247, 168, 194),size: 15,),
                    SizedBox(width: 5,),
                    Text("250 for one",style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

