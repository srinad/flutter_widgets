import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<String> netflix=['https://pbs.twimg.com/media/GEQaG6qaoAAuUEZ?format=jpg&name=small',
  'https://pbs.twimg.com/media/GEO2eWSXUAA26Ri?format=jpg&name=small',
  'https://pbs.twimg.com/media/GEHRwbUX0AAmy7p?format=jpg&name=small'];
  List<String> names = [
    'Mind-Bending',
    'Ominous',
    'Film Noir',
    'Twists & Turns',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
            child: Column(
              children: [
                Container(
                  width: 375,
                  height: 510,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -131,
                        top: 0,
                        child: Container(
                          width: 735,
                          height: 489,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://occ-0-4857-2186.1.nflxso.net/dnm/api/v6/9pS1daC2n6UGc3dUogvWIPMR_OU/AAAABeo2Lxvd4Ch2oYimVzIJxubQF2HAWFAVAZ-f9T61htZ4JCSPGvt1GO1aFqRtWMOOHiz4uHAN-bk5ErED1rZ8-MTAMTU4ojUHp2c7nxJF75idrJTYPZUZelaX.jpg?r=fc6"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -21,
                        top: 0,
                        child: Container(
                          width: 416,
                          height: 489,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0.7200000286102295),
                                Colors.black
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 15,
                        // right: 15,
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
                              width: 241,
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
                            Container(
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
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 97,
                        child: Container(
                            child: Column(
                          children: [
                            Opacity(
                              opacity: 0.70,
                              child: TabBar(
                                labelPadding:
                                    EdgeInsets.symmetric(horizontal: 3.0),
                                dividerColor: Colors.transparent,
                                isScrollable: true,
                                indicator: BoxDecoration(),
                                indicatorPadding: EdgeInsets.zero,
                                tabs: [
                                  Column(children: [
                                    Opacity(
                                      opacity: 0.70,
                                      child: Container(
                                          width: 78,
                                          height: 34,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1A1A1A),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                          child: _buildTab(
                                            'Home',
                                          )),
                                    ),
                                  ]),
                                  _buildTab('Tv Shows'),
                                  _buildTab('Movies'),
                                  _buildTab('Categories'),
                                ],
                              ),
                            ),
                          ],
                        )),
                      ),
                      Positioned(
                        top: 300,
                        child: Container(
                          width: 335,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 80,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThz_rTJYHADJAbXpxX755wxsPfcNNjqlb7Vc9SLzzDhReTkRpcQASqvnW6sA&s',
                                          ),
                                        ),
                                        Text(
                                          'My List',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt0GGyOGEP3ENV0J58i4bsaaCyIhd4q8QqMQ&usqp=CAU",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrbv-MPaMoHEkfcB2SXbh06gvjnWir8gMUYw&usqp=CAU',
                                          ),
                                        ),
                                        Text(
                                          'Info',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 380,
                        child: Column(
                          children: [
                            Container(
                              width: 350,
                              height: 43,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
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
                          ],
                        ),
                      ),
                      Positioned(
                        top: 400,
                        child: Container(
                          height: 100,
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
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
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
                SizedBox(height: 10,),
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
                          child: Column(
                                children: [
                                  Container(
                                    width: 115,
                                    height: 200,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.8700000047683716)],
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    ),
                                    child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                netflix[index],
                fit: BoxFit.cover, // Adjust the BoxFit as needed
              ),
            ),
                                  ),
                                ],
                              ),
                        );
                      }),
                ),
                Container(
                  alignment: Alignment.centerLeft,
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
              ],
            ),
          ))),
    );
  }

  Widget _buildTab(String label) {
    return Container(
      height: 32,
      width: 90,
      padding: EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
