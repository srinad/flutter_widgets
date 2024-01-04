import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenFour extends StatefulWidget {
  HomeScreenFour({
    super.key,
    thisintText,
  });

  @override
  State<HomeScreenFour> createState() => _HomeScreenFourState();
}

class _HomeScreenFourState extends State<HomeScreenFour> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final List<String> titles = [
    'Vegetables',
    'Fruits',
    'Milk & Eggs',
    'Drinks',
  ];
  final List itemtitle = [
    {
      'title': 'Brocolli',
      'scale': 5.0,
    },
    {
      'title': 'Potato',
      'scale': 5.0,
    },
    {
      'title': 'Onions',
      'scale': 5.0,
    },
  ];
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leadingWidth: 0,
        backgroundColor: Color.fromRGBO(236, 255, 252, 1),
        centerTitle: false,
        // leading: Icon(Icons.location_on_rounded,color: Color(0xFFFA575C),),
        title: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: Color(0xFFFA575C),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Madhapur, Hyderabad..',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFFFA575C),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications,
              color: Color(0xFFFA575C),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: SearchBar(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape:
                          MaterialStateProperty.all(ContinuousRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFD0DBEA),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      )),
                      padding: MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      leading: Icon(Icons.search),
                      hintText: 'Search by category',
                      hintStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) {
                          return TextStyle(
                            color: Color(0xFF144272),
                          );
                        },
                      ),
                      constraints: BoxConstraints(minHeight: 50, maxHeight: 50),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFA575C),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.80,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFD0DBEA),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all>>',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFFFA575C),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  height: 100,
                  //  color: Colors.black,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 3,
                        childAspectRatio: 0.8),
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            // height: 8,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFFF8F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.network(
                                    'https://c1.klipartz.com/pngpicture/593/493/sticker-png-fruits-vegetable-logo-fruits-vegetable-fruit-vegetable-food-nut-bowl-thumbnail.png',
                                    scale: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            titles[index],
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      );
                    },
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.network(
                      'https://media.istockphoto.com/id/1289226223/vector/organic-grocery-shopping-web-banner-design-for-store-online-market-home-delivery-line-vector.jpg?s=612x612&w=0&k=20&c=ID9loDx497I65NlYnCvdmCHfc1WUj1rF5ztcZ3oYrQo=',
                    ),
                  )),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular items',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all>>',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFFFA575C),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 20),
              Container(
                  height: 240,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 120,
                            height: 170,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.network(
                                    'https://media.istockphoto.com/id/1189117812/vector/vector-illustration-of-a-funny-potato-in-cartoon-style.jpg?s=612x612&w=0&k=20&c=rubtZdWlljpwMKKcpzM7uylkd42B9sVPiDk40onTq3Y=',
                                    scale: 10,
                                  )
                                      // Image.asset(
                                      //   imagePaths[index],
                                      //   scale: itemtitle[index]["scale"],
                                      //   // fit: BoxFit.cover,
                                      // ),
                                      ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    itemtitle[index]['title'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '1 kg',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '₹',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFFA575C),
                                        ),
                                      ),
                                      Text(
                                        '10',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFA575C),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        width: 28,
                                        height: 28,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFA575C),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
