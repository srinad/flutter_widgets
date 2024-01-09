import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePageView()));
// }

class HomeScreenSix extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenSixState();
}

class _HomeScreenSixState extends State<HomeScreenSix>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<double> headerNegativeOffset = ValueNotifier<double>(0);
  final ValueNotifier<bool> appbarShadow = ValueNotifier<bool>(false);
  final ValueNotifier<double> sheetPosition = ValueNotifier<double>(0.0);

  final double maxHeaderHeight = 140.0;
  final double minHeaderHeight = 56.0;
  final double bodyContentRatioMin = .9;
  final double bodyContentRatioMax = 1.0;

  ///must be between min and max values of body content ratio.
  final double bodyContentRatioParallax = .1;
  int _currentIndex = 0;
  @override
  void dispose() {
    headerNegativeOffset.dispose();
    appbarShadow.dispose();
    super.dispose();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // final classProvider = Provider.of<ClassDetailsProvider>(context);
    return SafeArea(
      child: Container(
        // decoration: BoxDecoration(
        //   // color: Colors.white,
        //   image: DecorationImage(
        //     image: AssetImage(Images.BACKGROUNDIMAGE),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Scaffold(
          // backgroundColor: Colors.black,
          key: _scaffoldKey,
          // drawer: Darwer(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Container(
              // decoration: BoxDecoration(
              //   gradient: tGradientColor,
              color: Color(0xFF840008),
              // ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnL8wJsE1ZRBZp6ibJIJR_pY6MEF0BS9_woA&usqp=CAU'),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            // Twl.navigateTo(context, NotificationScreen());
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.white,
                              ),
                              Positioned(
                                top: -10,
                                right: -5,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF840008),
                                  ),
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   image: DecorationImage(
            //     image: AssetImage(Images.BACKGROUNDIMAGE),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: Stack(clipBehavior: Clip.none, children: [
              //  Container(
              //    child: SliverPersistentHeader(
              //     pinned: true,
              //     delegate: MySliverAppBar(expandedHeight: 200.0),
              //          ),
              //  ),
              Container(
                  child: ValueListenableBuilder<double>(
                      valueListenable: headerNegativeOffset,
                      builder: (context, offset, child) {
                        return Transform.translate(
                          offset: Offset(0, offset * -3),
                          child: SizedBox(
                            height: maxHeaderHeight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                // gradient: tGradientColor,
                                color: Color(0xFF840008),
                              ),
                            ),
                          ),
                        );
                      })),
              NotificationListener<DraggableScrollableNotification>(
                onNotification: (notification) {
                  if (notification.extent == bodyContentRatioMin) {
                    appbarShadow.value = false;
                    headerNegativeOffset.value = 0;
                  } else if (notification.extent == bodyContentRatioMax) {
                    appbarShadow.value = true;
                    headerNegativeOffset.value =
                        maxHeaderHeight - minHeaderHeight;
                  } else {
                    double newValue = (maxHeaderHeight - minHeaderHeight) -
                        ((maxHeaderHeight - minHeaderHeight) *
                            ((bodyContentRatioParallax -
                                    (notification.extent)) /
                                (bodyContentRatioMax -
                                    bodyContentRatioParallax)));
                    appbarShadow.value = false;
                    if (newValue >= maxHeaderHeight - minHeaderHeight) {
                      appbarShadow.value = true;
                      newValue = maxHeaderHeight - minHeaderHeight;
                    } else if (newValue < 0) {
                      appbarShadow.value = false;
                      newValue = 0;
                    }
                    headerNegativeOffset.value = newValue;
                  }
                  double newSheetPosition = max(
                      1,
                      min(
                          2,
                          (notification.extent - bodyContentRatioMin) /
                              (bodyContentRatioMax - bodyContentRatioMin)));
                  sheetPosition.value = newSheetPosition;
                  return true;
                },
                child: DraggableScrollableSheet(
                  initialChildSize: bodyContentRatioMin,
                  minChildSize: bodyContentRatioMin,
                  maxChildSize: bodyContentRatioMax,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return ListView(
                      controller: scrollController,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  CarouselSlider.builder(
                                    itemBuilder: (context, index, realIndex) {
                                      return ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          'https://img.freepik.com/free-vector/flat-design-food-sale-background_23-2149173813.jpg',
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
                                      autoPlayAnimationDuration:
                                          Duration(milliseconds: 800),
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
                                      (index) => _currentIndex == index
                                          ? Container(
                                              width:
                                                  20.0, // Adjust the width of the container
                                              height:
                                                  8.0, // Adjust the height of the container
                                              decoration: BoxDecoration(
                                                color: Color(
                                                    0xFF840008), // Change the color of the container
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      20.0), // Adjust the radius as needed
                                                  topRight:
                                                      Radius.circular(20.0),
                                                  bottomLeft:
                                                      Radius.circular(20.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
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
                                                    : Color(0xFF70787E)
                                                        .withOpacity(0.1),
                                              ),
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "We Offers",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF9CA3AF),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    // SizedBox(
                                    //   height: 0.5.h,
                                    // ),
                                    GridView.builder(
                                      itemCount: 4,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 0.7,
                                        mainAxisSpacing: 0,
                                        crossAxisSpacing: 10,
                                      ),
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            // Twl.navigateTo(context, Dummy());
                                            // Twl.navigateTo(context, MealPageScreen());
                                          },
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                child: Image.network(
                                                    'https://static.toiimg.com/thumb/54308405.cms?imgsize=510571&width=800&height=800'),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Positioned(
                                                  bottom: 0,
                                                  top: 12,
                                                  left: 0,
                                                  right: 0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment(
                                                              0.00, -1.00),
                                                          end: Alignment(0, 1),
                                                          stops: const [
                                                            0.0,
                                                            0.7,
                                                            0.9,
                                                            0.95,
                                                            1
                                                          ],
                                                          colors: [
                                                            Colors.black
                                                                .withOpacity(
                                                                    0.0),
                                                            Colors.black
                                                                .withOpacity(
                                                                    0.5),
                                                            Colors.black
                                                                .withOpacity(
                                                                    0.9),
                                                            Colors.black
                                                                .withOpacity(
                                                                    0.90),
                                                            Colors.black
                                                          ],
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                  )),
                                              Positioned(
                                                bottom: 20,
                                                left: 20,
                                                right: 0,
                                                child: Text(
                                                  'Pure Veg',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    )
                                  ]),
                              SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Upcoming Orders",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF9CA3AF),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  // SizedBox(height: 0.h),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      // shadows: [tBoxShadow],
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1,
                                            color: Color(0xFF9CA3AF)
                                                .withOpacity(0.2)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xFF840008),
                                                ),
                                                height: 6,
                                                width: 90),
                                            SizedBox(width: 1.5),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0XFF757575),
                                                ),
                                                height: 6,
                                                width: 90),
                                            SizedBox(width: 1.5),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0XFF757575),
                                              ),
                                              height: 6,
                                              width: 90,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color(0xFF840008),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  "Confirming meal...",
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  "Your meal for delivery",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'quantity' + ' : ' + "2",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0XFF757575),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12, vertical: 8),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xFF840008))),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "MON",
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "23",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
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
                              ),
                              SizedBox(height: 20),
                              Text(
                                "How to use",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF9CA3AF),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmTo3AoEPUpftIj1I3yO-QwZSjwgc8y-nouKs1WxsF00Tt6wFST6VUNCIDZR-zrm1ohOc&usqp=CAU',
                                            scale: 2,
                                          ),
                                          SizedBox(
                                            height: 1,
                                          ),
                                          Text(
                                            "How to use wallet",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ]),
          ),
          // drawer: Drawer(),
        ),
      ),
    );
  }
}
