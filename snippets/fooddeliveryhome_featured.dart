import 'package:flutter/material.dart';

//featured builder
class FeaturedBuilder extends StatelessWidget {
  const FeaturedBuilder({super.key,count});

  final int count = 10;

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
        child: ListView.builder(
          itemCount: count,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return FodCard();
              //   },));
              // },
              child: Featured());
          },
        ),
      ),
    );
  }
}

//featured card
class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  
  bool isFavorouite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical:10),
          width: MediaQuery.of(context).size.width,
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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.network("https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg",fit: BoxFit.fill,),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Santosh Dhaba",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6,vertical: 5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 29, 114, 32),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // width: 40,
                          child: Row(
                            children: [
                              Text("4.0",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                              SizedBox(width: 3,),
                              Icon(Icons.star,color: Colors.white,size: 16,)
                            ],
                          ),
                          
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chinese , Seafood, \$200 for one",style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.timer_outlined,color: Colors.blueGrey,size: 15,),
                            SizedBox(width: 5,),
                            Text("25-30 min",style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        //started positioned
        Positioned(
          top: 20,
          right: 70,
          child: InkWell(
            onTap: () {
              setState(() {
                isFavorouite =!isFavorouite;
              });
            },
            child: Icon(
              isFavorouite ?
                Icons.favorite
              : Icons.favorite_border_outlined,
              color: isFavorouite ? Colors.red : Colors.white,
              size: 35,
            ),
          )
        ),
        //2nd pop up
        Positioned(
          right: 20,
          top: 15,
          child: PopupMenuButton(
            offset: Offset(0, 50),
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            icon: Icon(Icons.more_vert,color: Colors.white,size: 30,),
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.space_dashboard_rounded,color: Colors.white,size: 15,),
                  title: Text("Show similar restaurants",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.visibility_off,color: Colors.white,size: 15,),
                  title: Text("Hide this restaurant",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.share,color: Colors.white,size: 15,),
                  title: Text("Share",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),),
                )),
              ];
            },
          )
        )
        // Positioned(
        //   top: 20,
        //   right: 30,
        //   child: InkWell(
        //     onTap: () {
        //       //
        //     },
        //     child: Container(
        //       padding: EdgeInsets.all(5),
        //       child: Icon(Icons.more_vert,color: Colors.white,size: 30)),
        //   )
        // )

      ],
    );
  }
}