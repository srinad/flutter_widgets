import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class SalonHomePage extends StatefulWidget {
  final int tabIndex;

  const SalonHomePage({Key? key, required this.tabIndex}) : super(key: key);

  @override
  State<SalonHomePage> createState() => _SalonHomePageState();
}

class _SalonHomePageState extends State<SalonHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.tabIndex,
    );
  }

  void _itemTapped(int index) {
    setState(() {
      tabController.index = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Icon(
            Icons.location_on,
            color: Colors.black,
          ),
        ),
        leadingWidth: 25,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Madhapur, Hyderabad..',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dotted,
          ),
          // Add padding below the text to create space between text and underline
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: true,
            applyHeightToLastDescent: true,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
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
            Expanded(
              child: CustomScrollView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 6,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: TabBar(
                          indicatorPadding: EdgeInsets.zero,
                          controller: tabController,
                          unselectedLabelColor: Colors.black,
                          labelPadding: EdgeInsets.zero,
                          indicator: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    tabController.index == 0 ? 25.0 : 0.0),
                                topRight: Radius.circular(
                                    tabController.index == 1 ? 25.0 : 0.0),
                                bottomLeft: Radius.circular(
                                    tabController.index == 0 ? 25.0 : 0.0),
                                bottomRight: Radius.circular(
                                    tabController.index == 1 ? 25.0 : 0.0),
                              ),
                            ),
                            color: Colors.yellow[700],
                          ),
                          onTap: _itemTapped,
                          tabs: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Tab(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.directions_walk_rounded,
                                        color: Colors.black),
                                    Text(
                                      "Walk in",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Tab(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.house_outlined,
                                        color: Colors.black),
                                    Text(
                                      "Home visit",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        WalkinTab(),
                        Text("Delivery data"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WalkinTab extends StatefulWidget {
  WalkinTab({
    super.key,
  });

  @override
  State<WalkinTab> createState() => _WalkinTabState();
}

class _WalkinTabState extends State<WalkinTab> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://t3.ftcdn.net/jpg/05/85/53/12/360_F_585531281_0KRbhWpgr8xZGyCJ6IR5nz7sdd9YRzfn.jpg',
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
                        ? Colors.yellow[700]
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Upcoming Appointment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow[700],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 170,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal, //For horizontal scroll
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      width: 310,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ClipOval(
                                        child: Image.network(
                                      'https://img.freepik.com/free-photo/client-doing-hair-cut-barber-shop-salon_1303-20710.jpg',
                                      fit: BoxFit.cover,
                                      width: 50, // Adjust the size as needed
                                      height: 50,
                                    )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'The Stylizz Salon',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Hair Cut, Hair Color',
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
                                            Icon(Icons.location_on_sharp),
                                            Text(
                                              'Madapur',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Dash(
                                        direction: Axis.vertical,
                                        length: 80,
                                        dashThickness: 1.5,
                                        dashLength: 3.5,
                                        dashColor: Colors.black),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.access_time_filled_outlined),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '11:30 AM',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '15 June 22',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: Colors.blue[900],
                            ),
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'In 01 Hr 30 Mins',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow[700],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.yellow[700],
                              shape: BoxShape.circle),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/5499/5499913.png',
                            scale: 15,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Haircut',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Salons',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  'View More',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow[700],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 280,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    // color: Colors.amber[100],
                    // padding: EdgeInsets.all(10),
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
                            'https://as1.ftcdn.net/v2/jpg/03/35/19/48/1000_F_335194888_SlHxxlHwwYGtYNrkVjqPyAuKIDTpkuH3.jpg',
                            scale: 5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 190,
                          // color: Colors.pink,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Stylyst spa and salon',
                                style: TextStyle(
                                    fontSize: 13,
                                    // color: Colors.blue[900],
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Hair cut, massage, spa, shawi...',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.route,
                                        color: Colors.blue[900],
                                      ),
                                      Text(
                                        '3.5 km',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  // Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.blue[900],
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                  'Nearby Salons',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  'View More',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow[700],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://imgmedia.lbb.in/media/2023/08/64c8ed2ef619575fbd3f597b_1690889518236.jpg',
                          scale: 9,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //           ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'The Stylyst salon',
                                  style: TextStyle(
                                      fontSize: 16,
                                      // color: Colors.blue[900],
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.favorite, color: Colors.grey,),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'Hair cut, Hair Color,shawi...',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                   children: [
                                     Icon(
                                      Icons.location_on_sharp,
                                      size: 20,
                                      color: Colors.blue[900],
                                ),
                                Text(
                                      'Madhapur',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                ),
                                   ],
                                 ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.route,
                                      size: 20,
                                      color: Colors.blue[900],
                                    ),
                                    Text(
                                      '3.5 km',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.blue[900],
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '(65 Reviews)',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
