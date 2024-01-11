import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen5 extends StatefulWidget {
  const HomeScreen5({super.key});

  @override
  State<HomeScreen5> createState() => _HomeScreen5State();
}

class _HomeScreen5State extends State<HomeScreen5> {
  final CarouselController _carouselController = CarouselController();
  List<bool> isSelected = List.generate(6, (index) => false);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 235, 236),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bakery Shop',
                style: TextStyle(
                    color: Color(0xFF840008),
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
            Text('Home',
                style: TextStyle(
                    color: Color(0xFF840008),
                    fontWeight: FontWeight.w400,
                    fontSize: 15)),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xFF840008),
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                onChanged: (value) {
                  // getAvailableVehicleApi(value);
                },
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF840008),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                )),
                trailing: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF840008),
                    ),
                    child:
                        Center(child: Icon(Icons.search, color: Colors.white)),
                  )
                ],
                leading: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.mic_none_sharp,
                      color: Color.fromARGB(255, 196, 193, 193)),
                ),
                hintText: 'Search Products',
                hintStyle: MaterialStatePropertyAll(
                    TextStyle(fontSize: 15, color: Colors.grey)),
                constraints: BoxConstraints(minHeight: 0, maxHeight: 40),
              ),
              SizedBox(height: 20),
              Text('Daily discounts',
                  style: TextStyle(
                      color: Color(0xFF840008),
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                        color: Color(0xFF840008),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CarouselSlider.builder(
                          carouselController: _carouselController,
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              // margin: EdgeInsets.symmetric(
                              //     vertical: 1, horizontal: 1),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy5YZ4bWf0tIymNf76cPafccW2O9U4xWb65g&usqp=CAU',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x28000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            );
                          },
                          itemCount: 3,
                          options: CarouselOptions(
                            aspectRatio: 1.6,
                            viewportFraction: 1.0,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 30),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              // You can add onPageChanged logic here
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFF840008),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => _currentIndex == index
                          ? Container(
                              width: 20.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF840008),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                            )
                          : Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Color(0xFF840008)
                                    : Color(0xFF70787E).withOpacity(0.1),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              // SizedBox(heig),
              Text('Categories',
                  style: TextStyle(
                      color: Color(0xFF840008),
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    height: 30,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected[index] = !isSelected[index];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: isSelected[index]
                                    ? Colors.red
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.red),
                              ),
                              child: Text(
                                'Cakes',
                                style: TextStyle(
                                    color: isSelected[index]
                                        ? Colors.white
                                        : Colors.red),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  if (isSelected.contains(true))
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.7),
                      itemCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            // color: Colors.amber[100],
                            padding: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-pLPuWjZ4phJ5hgSVwf89mWbkBoCMWWy29A&usqp=CAU',
                                    scale: 2,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  width: 150,
                                  // color: Colors.pink,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fruity Summer',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF840008),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'with buttery layers',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '\$ ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF840008),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                '250.0',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ],
                                          ),

                                          // Spacer(),
                                          Container(
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xFF840008),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  else
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.7),
                      itemCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            // color: Colors.amber[100],
                            padding: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-pLPuWjZ4phJ5hgSVwf89mWbkBoCMWWy29A&usqp=CAU',
                                    scale: 2,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  width: 150,
                                  // color: Colors.pink,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fruity Summer',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF840008),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'with buttery layers',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '\$ ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF840008),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                '250.0',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ],
                                          ),

                                          // Spacer(),
                                          Container(
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xFF840008),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
