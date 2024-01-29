import 'package:flutter/material.dart';
import 'package:netflixhomescreen/NetflixEditProfile.dart';
import 'package:netflixhomescreen/NetflixStrangerThing.dart';

class NetflixHomePage extends StatefulWidget {
  const NetflixHomePage({super.key});

  @override
  State<NetflixHomePage> createState() => _NetflixHomePageState();
}

class _NetflixHomePageState extends State<NetflixHomePage>
    with SingleTickerProviderStateMixin {
  List<String> netflix = [
    'https://pbs.twimg.com/media/GEQaG6qaoAAuUEZ?format=jpg&name=small',
    'https://pbs.twimg.com/media/GEO2eWSXUAA26Ri?format=jpg&name=small',
    'https://pbs.twimg.com/media/GEHRwbUX0AAmy7p?format=jpg&name=small'
  ];
  List<String> names = [
    'Mind-Bending',
    'Ominous',
    'Film Noir',
    'Twists & Turns',
  ];
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight = _selectedIndex == 0 ? 479.0 : 300.0;

    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 416,
                        height: 470.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Colors.black.withOpacity(0),
                              Colors.black.withOpacity(0.7200000286102295),
                              Colors.black,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        child: Container(
                          width: 416,
                          height: 470.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.network(
                            _getImageForTab(_selectedIndex),
                            fit: BoxFit.cover,
                            height: containerHeight,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyUXxTyiHsYBk9pQBgRI6xnEgfO2PfLBol_O2PXTmm4hiZrcvDcvdHIoWO85-swXbabbM&usqp=CAU',
                                scale: 6,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 221,
                              height: 40,
                              decoration: ShapeDecoration(
                                color: Color(0xFF1E1E1E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.red,
                                  ),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the next page when the container is tapped
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditProfile(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/6214560/pexels-photo-6214560.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 72,
                        left: 0,
                        right: 0,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buildCustomTab(0, 'Home'),
                                buildCustomTab(1, 'Tv Shows'),
                                buildCustomTab(2, 'Movies'),
                                buildCustomTab(3, 'Categories'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 78,
                        left: 95,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        border: Border.all(color: Colors.grey)),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'My List',
                                  style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 89,
                        left: 150,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 78,
                        left: 220,
                        child: Column(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.grey,
                              size: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Info',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 20,
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'SHUTTER ISLAND',
                            style: TextStyle(
                                color: Color(
                                  0xFFE8BB6C,
                                ),
                                fontSize: 30),
                          ),
                        )),
                      ),
                      Positioned(
                        top: 420,
                        child: Container(
                          height: 60,
                          width: 350,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: 3,
                                              height: 3,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFC50000),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            names[index],
                                            style: TextStyle(
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 11,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Only on Netflix',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 240,
                      width: 360,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                            width: 115,
                                            height: 200,
                                            decoration: ShapeDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(0.00, -1.00),
                                                end: Alignment(0, 1),
                                                colors: [
                                                  Colors.black.withOpacity(0),
                                                  Colors.black.withOpacity(
                                                      0.8700000047683716),
                                                ],
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                // Navigate to the next page when tapped
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Stangerathings(), // Replace NextPage with your actual next page widget
                                                  ),
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: Image.network(
                                                  netflix[index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                    Positioned(
                                        bottom: 195,
                                        left: 75,
                                        child: Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10))),
                                            child: Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4),
                                              child: Text(
                                                'Top 10',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            )))),
                                    Positioned(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF97IS-h66hUXISppaxpV3aZ28u2RYmSVamtBx-v7DsdqbXvwbntA9K9lK5A&s',
                                        scale: 8,
                                      ),
                                    )),
                                    Positioned(
                                        bottom: 50,
                                        child: Container(
                                          width: 115,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(1.00, -0.00),
                                              end: Alignment(-1, 0),
                                              colors: [
                                                Color(0x00C50000),
                                                Color(0xFFC50000),
                                              ],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'New Episode ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                ));
                          })),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Continue Watching for ARUN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      height: 240,
                      width: 360,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 115,
                                          height: 200,
                                          decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.00, -1.00),
                                              end: Alignment(0, 1),
                                              colors: [
                                                Colors.black.withOpacity(0),
                                                Colors.black.withOpacity(
                                                    0.8700000047683716),
                                              ],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image.network(
                                              netflix[index],
                                              fit: BoxFit
                                                  .cover, // Adjust the BoxFit as needed
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                        bottom: 195,
                                        left: 75,
                                        child: Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10))),
                                            child: Center(
                                                child: Text(
                                              'Top 10',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )))),
                                    Positioned(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF97IS-h66hUXISppaxpV3aZ28u2RYmSVamtBx-v7DsdqbXvwbntA9K9lK5A&s',
                                        scale: 8,
                                      ),
                                    )),
                                    Positioned(
                                        bottom: 50,
                                        child: Container(
                                          width: 115,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(1.00, -0.00),
                                              end: Alignment(-1, 0),
                                              colors: [
                                                Color(0x00C50000),
                                                Color(0xFFC50000),
                                              ],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'New Episode ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                ));
                          }))
                ],
              ),
            ),
          )
        ]));
  }

  String _getImageForTab(int index) {
    switch (index) {
      case 0:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAXIZhB3N57d6EqCopXc2t0y8SX8F_11wzTu06gyf2RKo9qRrUDY-Mq-vI9lCUOj9_QlM&usqp=CAU';
      case 1:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZlS1DiLDgw8zHdjzwkj4dKD344BPM2FYZ5Sc5tJSzlkwXBgPDtFkf1p9OXsX61A6gjyE&usqp=CAU';
      case 2:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlCQys0Q5ph91R08HGLMPyeo-VfNKJDPrYwg&usqp=CAU';
      case 3:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTECSRBSp2CoueMQd-0bFWkpRfGVvLOMN3iiw&usqp=CAU';
      default:
        return '';
    }
  }

  Widget buildCustomTab(int index, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
        decoration: ShapeDecoration(
          color:
              _selectedIndex == index ? Color(0xFF1A1A1A) : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 4,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.white : Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTab(String tabName) {
    return Center(
      child: Text(
        tabName,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
