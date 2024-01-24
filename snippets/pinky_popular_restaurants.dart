import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularRestaurants extends StatefulWidget {
  const PopularRestaurants({super.key});

  @override
  State<PopularRestaurants> createState() => _PopularRestaurantsState();
}

class _PopularRestaurantsState extends State<PopularRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFF7218E),
        leading: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.8999999761581421),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                  color: Color(0x2D000000),
                  blurRadius: 3,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Icon(
              Icons.navigate_before,
            ),
          ),
        ),
        title: Text(
          'Popular Restaurants',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.8999999761581421),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadows: [
                  BoxShadow(
                    color: Color(0x2D000000),
                    blurRadius: 3,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTzlsphpwkMXJFHqXvrzQnMJtcjHZuBl3Ucx-DS0hdbHnhgbChV',
                              scale: 2.5,
                            ),
                          ),
                          Positioned(
                            top: 47.5,
                            left: 25,
                            right: 25,
                            child: Container(
                              alignment: Alignment.center,
                              width: 98,
                              height: 20,
                              // padding: EdgeInsets.symmetric(vertical: 3,horizontal: 39.5),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                color: Colors.white,
                              ),
                              child: Text(
                                'UPTO',
                                style: TextStyle(color: Colors.black,fontSize: 10),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -10,
                            left: 13,
                            right: 13,
                            child: Container(
                              alignment: Alignment.center,
                              width: 98,
                              height: 25,
                              // padding: EdgeInsets.symmetric(vertical: 3,horizontal: 39.5),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromRGBO(249, 64, 142, 1),
                              ),
                              child: Text(
                                '50% off',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                          
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Raj Palace Restaurant',
                            style: GoogleFonts.mulish(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Chinese, North Indian',
                            style: GoogleFonts.mulish(
                              color: Color(0xFF606060),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Color.fromRGBO(249, 64, 142, 1),
                                  size: 15),
                              SizedBox(width: 4),
                              Text(
                                '4.5',
                                style: GoogleFonts.mulish(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.access_time_sharp,
                                  color: Color.fromRGBO(249, 64, 142, 1),
                                  size: 15),
                              SizedBox(width: 4),
                              Text('20 mins',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFF606060),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.route_outlined,
                                        color: Color.fromRGBO(249, 64, 142, 1),
                                        size: 15),
                                    SizedBox(width: 3),
                                    Text('2.1 km',
                                        style: GoogleFonts.mulish(
                                          color: Color(0xFF606060),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('₹200/-',
                                        style: GoogleFonts.mulish(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Text('For one',
                                        style: GoogleFonts.mulish(
                                            color: Color(0xFF606060),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
