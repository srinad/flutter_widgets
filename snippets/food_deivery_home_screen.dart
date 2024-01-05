
import 'package:flutter/material.dart';


class FodCard extends StatelessWidget {
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return ProfileScreen();
                  // },));
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
          FodCardBody(),
          
        ],
      )
      
    );
  }
}


class FodCardBody extends StatefulWidget {
  @override
  State<FodCardBody> createState() => _FodCardBodyState();
}

class _FodCardBodyState extends State<FodCardBody> {
  int? value = 1;
  List<String> titles = ["Top","Nearest","Great Offers"];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
           
            SizedBox(height: 10,),
            // for you
            HeadingText(title: "FOR YOU",),
            ForYouBuilder(),
        
            //explore
            HeadingText(title: "EXPLORE",),
            ExploreMenu(),
        
            //WHATS ON YOUR MIND
            HeadingText(title: "WHAT'S ON YOUR MIND",),
            WhatsOnBuilder(),
        
            Column(
                children: [
                  // //featured cards
                  HeadingText(title: "ALL RESTAURANTS",),
                  FeaturedBuilder(count: 3),
                
                  //top brands cards
                  HeadingText(title: "TOP BRANDS",),
                  TopBrandsBuilder(),
                  SizedBox(height: 10,),
        
                  FeaturedBuilder(count:10),
                ],
              )
        
            
            
            
        
            
            
            
          ],
        ),
      ),
    );
  }
}

//explore menu

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExporeMenuState();
}

class _ExporeMenuState extends State<ExploreMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                //     return CartScreen();
                //   },));
                // },
                child: Explore(color: Colors.blue,icon: Icons.discount,subtitle: "Flat discounts",title: "Offers")),
              InkWell(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                //     return CartScreen();
                //   },));
                // },
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


//featured builder
class FeaturedBuilder extends StatelessWidget {
  const FeaturedBuilder({super.key,required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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

//for you builder
class ForYouBuilder extends StatelessWidget {
  const ForYouBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    

//heading Text
class HeadingText extends StatelessWidget {
  const HeadingText({super.key,required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          width: MediaQuery.of(context).size.width,
          child: Divider(
            color: Colors.grey.shade100,
          )
        ),
        Positioned(
          top: 25,
          child: Center(
            child: Container(
              
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,style: TextStyle(
                    color: Colors.blueGrey,
                    backgroundColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),),
                ],
              ),
            ),
          )
        )
      ],
    );
  }
}


//topbrands builder
class TopBrandsBuilder extends StatelessWidget {
  const TopBrandsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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


class WhatsOnBuilder extends StatelessWidget {
  const WhatsOnBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return WhatsOnCard();
        },
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