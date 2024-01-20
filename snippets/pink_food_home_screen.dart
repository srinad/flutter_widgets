import 'package:carousel_slider/carousel_slider.dart';
import 'package:example_widgets/CategoryScreen2/category_screen2.dart';
import 'package:flutter/material.dart';

class PinkFoodHomeScreen extends StatefulWidget {
  const PinkFoodHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PinkFoodHomeScreen> createState() => _PinkFoodHomeScreenState();
}

int _currentIndex = 0;
List<Map<String, dynamic>> productName = [
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS9d4oEp39Sj-zqjgOjXUGYoZi_oS06CwgtZh6ss8AxPGTXpjin',
    'name': 'Burger',
  },
  {
    'imagePath':
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNveyeJ5DUzlpBKewgMO53vmHrNEIDc7Q5Gg4OcgS3UKzz7tUb',
    'name': 'Drinks',
  },
  {
    'imagePath':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZi2xCFyHFNmuDqtkpYsFMsJnbRvLAVQoKCOdrr4PO3vUTISh1',
    'name': 'Pizza',
  },
  {
    'imagePath':
        'https://thumbs.dreamstime.com/b/pita-bread-chips-snacks-wooden-bowl-appetizer-concept-pita-bread-chips-snacks-wooden-bowl-99622308.jpg',
    'name': 'Snacks',
  },
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTe_4OdHRn5K7cjbPICDw_-GjljuN6IHDHZJUMIIXQX5_jqXNPk',
    'name': 'Indian',
  },
];

class _PinkFoodHomeScreenState extends State<PinkFoodHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 120.10, //set your height
          flexibleSpace: Container(
            color: Color.fromRGBO(236, 35, 108, 1), // set your color
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: ShapeDecoration(
                              color: Color(0xFFF8F8F8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Icon(
                              Icons.sort,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Madhapur, Hyderabad..',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF8F8F8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.location_on_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            // fontStyle: FontStyle.italic,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                  itemBuilder: (context, index, realIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTmTVLOzC73Ul-ckAC3GpU7Eq46OXoPmXpGGvbXMAiYoXaixRxi',
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  itemCount: 3,
                  options: CarouselOptions(
                    aspectRatio: 1.8,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Color.fromRGBO(236, 35, 108, 1)
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                         Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CategoryScreen2(),
                            ),
                          );
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: Color(0xFF6C19F5),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 12),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  productName[index]['imagePath'],
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              productName[index]['name'],
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Restaurants',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF6C19F5),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 230,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.only(
                              right: 10, left: 3, top: 5, bottom: 5),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                spreadRadius: 2.5,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      child: Image.network(
                                        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSp-0kOcJj8MhoLY584YeJTVh-WulplNigKc6TvriX6aLIFIYPb',
                                        scale: 1.2,
                                      )),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 15),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(236, 35, 108, 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      '50% OFF \nUp to ₹200',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    bottom: 5,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Color.fromRGBO(
                                                  236, 35, 108, 1),
                                            ),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Raj Palace Restaurant',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'North Indian, chinese, sea foods',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near by restaurants',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF6C19F5),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal, //For horizontal scroll
                  itemBuilder: (context, index) {
                    return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 6,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomCenter,
                                        clipBehavior: Clip.none,
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTxFMgMfsHbj7VjcGd9N5Gi6q5Iok8p61p6uOcm_BijDpIAcrkD',
                                                fit: BoxFit.fill,
                                                width: 90,
                                                height: 85,
                                              )),
                                          Positioned(
                                            bottom: 0,
                                            
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 5),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        236, 35, 108, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '40%',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' ',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'OFF',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.55,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Raj Palace Restaurant',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Chinnese, North Indian',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Color.fromRGBO(
                                                      236, 35, 108, 1),
                                                ),
                                                Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.route,
                                                      color: Color.fromRGBO(
                                                          236, 35, 108, 1),
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      '3.5 km',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 8),
                                                Text(
                                                  'Open now',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Color(0xFF0EB80E),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
