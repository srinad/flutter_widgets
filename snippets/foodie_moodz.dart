import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FoodsBody extends StatefulWidget {
  @override
  State<FoodsBody> createState() => _FoodsBodyState();
}

class _FoodsBodyState extends State<FoodsBody> {
  List<String> Categories = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJcoilNxcAV2pwKsnQE1cFsB1_dyO3Mq0FNA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgWPohcZVbf1dGW1CytbhN0bxaF7UQaxRc8A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTALVLttHonEqZY78bFs_svxQxW1bbcMhUZg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlvGr6aLE6w9_Ba1WL-cd-ADHgnpqhGcNcYQ&usqp=CAU0'
  ];
  List<String> Categoriesnames = ['Burger', 'Pizza', 'Juice', 'Ramen'];
  List<String> Newarrival = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWNLMz1jdnwqO8tlTdrgeqsLEFWRVyvArfjPTx_2s4c4dknVnX2h0XPMC8Kob6T33CwyA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGTx1UQpmR7s7z6PHGl7EHgWKn953qQhUa1g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC3YMvDs85n0JXJ_x4iKccSOpcfAKnFKWB4g&usqp=CAU'
  ];
  List<String> toprestaurent = [
    'assets/images.jpg',
    'assets/download.jpg'
  ];
  int _currentIndex = 0;
  List<String> topoffers = ['50%', '40%'];
  List< String> restaurentname=['Gol Konda’s Special','Raju Bhai Pavbhaji'];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(
    // Add padding to the entire AppBar
    title: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJSLDPIQHkEhYRv5tbp0r7odK9_SzkJDE8pw&usqp=CAU',
              scale: 5,
              fit: BoxFit.cover, // Adjust the fit property according to your requirements
            ),
          ),
          SizedBox(width: 10), // Add some spacing between the image and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                'Shrvn prjpti',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.search,
            color: Color.fromARGB(255, 0, 0, 0), size: 30),
      )
    ],
  ),


        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(children: [
                Row(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC7rJLsq85Vr6lNyJFzH-EV-tdowHjGkwAQw&usqp=CAU',
                      scale: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Ayyappa Society, Madhapur, Hyderabab'),
                    DropdownButton(
                      items: [], // Empty list for items
                      onChanged: (value) {
                        // Handle dropdown value changes
                      },
                      // Optional hint text
                    ),
                  ],
                ),
               
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    Container(
                      width: 350,
                      height: 160,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEBD11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          // height: 50,
                          // width: 40,
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 116,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoGAv0al_tA8BJNV5ZEdT0FO16czRDS3_Mcw&usqp=CAU"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  children: [
                                    Text(
                                      '50% OFF',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 32),
                                    ),
                                    Text(
                                      'All Pizza and Pasta',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF2D2D2D),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                      ),
                                      child: Center(
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Use code ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'FOODYYY',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 350,
                      height: 160,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEBD11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          // height: 50,
                          // width: 40,
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 116,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoGAv0al_tA8BJNV5ZEdT0FO16czRDS3_Mcw&usqp=CAU"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  children: [
                                    Text(
                                      '50% OFF',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 32),
                                    ),
                                    Text(
                                      'All Pizza and Pasta',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF2D2D2D),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                      ),
                                      child: Center(
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Use code ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'FOODYYY',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 350,
                      height: 160,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEBD11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          // height: 50,
                          // width: 40,
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 116,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoGAv0al_tA8BJNV5ZEdT0FO16czRDS3_Mcw&usqp=CAU"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  children: [
                                    Text(
                                      '50% OFF',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 32),
                                    ),
                                    Text(
                                      'All Pizza and Pasta',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF2D2D2D),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                      ),
                                      child: Center(
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Use code ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'FOODYYY',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Color(0xFFFEBD11)
                                : Colors.grey,
                          ));
                    })),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 89,
                      height: 23,
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFF134F9C),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
      height: 60,
      width: 360,
      child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    physics: AlwaysScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      Color backgroundColor = index == 0
          ? Color(0xFFFF871C) // Orange for the first container
          : Colors.white; // White for the rest
      // Change the text color as needed
    
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
         
    
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Image.network(Categories[index],height: 30,width: 30,),
                                SizedBox(width: 6,),
                                Text(
                  Categoriesnames[index],
                  style: TextStyle(fontSize: 13,
                    color: index == 0 ? Colors.white : Colors.black,
                  ),
                ),
                              ],
                            ),
                          )
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today New Arivable',
                            style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Best of the today food list update',
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFF134F9C),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF134F9C),
                          size: 10,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 3,
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 125,
                            height: 159,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 19,
                                  child: Container(
                                    width: 125,
                                    height: 140,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x33757575),
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 81,
                                  child: Text(
                                    'Burger Bangor',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF2D2D2D),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 27.50,
                                  top: 100,
                                  child: Text(
                                    'Spaicy Taste',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF757575),
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 0,
                                  child: Container(
                                    width: 101,
                                    height: 78.78,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(Newarrival[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 118,
                                  child: Container(
                                    width: 81,
                                    height: 36,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 32,
                                          top: 0,
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '₹',
                                                  style: TextStyle(
                                                    color: Color(0xFFFF871C),
                                                    fontSize: 18,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '120',
                                                  style: TextStyle(
                                                    color: Color(0xFF2D2D2D),
                                                    fontSize: 23,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 1,
                                          top: 13,
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '₹',
                                                  style: TextStyle(
                                                    color: Color(0xFF757575),
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '150',
                                                  style: TextStyle(
                                                    color: Color(0xFF757575),
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 22,
                                          child: Container(
                                            width: 29,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  strokeAlign: BorderSide
                                                      .strokeAlignCenter,
                                                  color: Color(0xFF757575),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Restaurant',
                      style: TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFF134F9C),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                          color: Color(0xFF134F9C),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
               Container(
  height: 250,
  child: ListView.builder(
    itemCount: 2,
    scrollDirection: Axis.horizontal,
    physics: AlwaysScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child:Container(
  width: 235,
  height: 147,
  child: Stack(
    children: [
      Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 235,
          height: 147,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 235,
                  height: 147,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -3,
                top: -12,
                child: Container(
                  width: 240,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(toprestaurent[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 0,
        top: 57,
        child: Container(
          width: 235,
          height: 90,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0x00F6C7C5), Color(0xB52E1B1A), Color(0xDD2E1B1A)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      Positioned(
        left: 14,
        top: 101,
        child: Text(
         restaurentname[index],
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
      Positioned(
        left: 14,
        top: 121,
        child: Text(
          'Aayyappa Society, Madhapur..',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
      Positioned(
        left: 200,
        top: 103,
        child: Row(
          children: [
            Icon(Icons.star,size: 10,color: Color(0xFFFF871D),),
            Text(
              '4.5',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 91,
          height: 35,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xDD82706F), Color(0x632E1B1A)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: 10,
        top: 3,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:topoffers[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: ' ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -3.08,
                ),
              ),
              TextSpan(
                text: 'off',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
));}))
              ])),
        ));
  }
}
