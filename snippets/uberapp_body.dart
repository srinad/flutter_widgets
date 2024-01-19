import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<Map<String, dynamic>> imagetitle = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdd4bYvmrTS4e7ujaCAFLVZ2FIBmuIy2TrrA&usqp=CAU',
      'title': 'Ride',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpa7zGTGiM801VkqHgY68YQKdilH6XlX5R_Q&usqp=CAU',
      'title': 'Package',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_QOV0wQxc-yyLJhp6FXh8LOeWsd-bbZmCWg&usqp=CAU',
      'title': 'rentals',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZUNuawukY0ZGWrCOgjAzek9tKdKE2ibtq9Q&usqp=CAU',
      'title': 'intercity',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: Text(
          'Around you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.10000000149011612),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP-zYRZ8JHfyWKzM639GC5-bFSyzq7juwo9g&usqp=CAU"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(52),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          child: Column(
            children: [
              Container(
                width: 360,
                height: 260,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 390,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3QnPVy0KCFwtq-XfEtAyM7qX49bSefnLaxg&usqp=CAU"),
                          fit: BoxFit.cover,scale: 6
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 140,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors
                                    .blue, // You can set your desired background color here
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  imagetitle[index]['image'],
                                  scale: 4,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              imagetitle[index]['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
              Row(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0dkYGlWmKEN-BisK3BFtmXAnQqV5j_lMeEQ&usqp=CAU',
                    scale: 6,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 121,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.10000000149011612),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            'Where to?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZpKeMTafTPtka1mvlRbInc2yOzHElScwbaQ&usqp=CAU',
                    scale: 9,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.10000000149011612),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  'Set time',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                DropdownButton(
                                  items: [], // Empty list for items
                                  onChanged: (value) {
                                    // Handle dropdown value changes
                                  },
                                  // Optional hint text
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          width: 271,
                          height: 45,
                          decoration: ShapeDecoration(
                            color:
                                Colors.white.withOpacity(0.10000000149011612),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Set location on map',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 14,
                            height: 25.86,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 5.60,
                                  top: 6.30,
                                  child: Opacity(
                                    opacity: 0.20,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(1.57),
                                      child: Container(
                                        width: 19.56,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 2,
                                              strokeAlign:
                                                  BorderSide.strokeAlignCenter,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 14,
                                    height: 14,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC4C4C4),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          width: 271,
                          height: 45,
                          decoration: ShapeDecoration(
                            color:
                                Colors.white.withOpacity(0.10000000149011612),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Choose a saved place',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
      children: [
        Container(
          width: 360,
          height: 170,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/343x140"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU5jQ0o1-qoReayuADtbktAyXZdaMdaJfa8Q&usqp=CAU',
          fit: BoxFit.cover,),
        ),
      ],
    )
            ],
          ),
        ),
      ),
    );
  }
}
