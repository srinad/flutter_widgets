import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  List<Map<String, dynamic>> colorNames = [
    {
      'color': Color(0xFFFFCC01),
      'name': 'Farmers',
    },
    {
      'color': Color(0xFFFFCC01),
      'name': 'Leads',
    },
    {
      'color': Color(0xFFEF7F1B),
      'name': 'Enrolling\nRegistering',
    },
    {
      'color': Color(0xFFEF7F1B),
      'name': 'Staff',
    },
    {
      'color': Color(0xFFFFCC01),
      'name': 'Pending\nAgreements',
    },
    {
      'color': Color(0xFFFFCC01),
      'name': 'Deliveries',
    },
    {
      'color': Color(0xFFEF7F1B),
      'name': 'Vehicle\nManagement',
    },
  ];
  List<dynamic> banners = [];
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.indigo,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), // Adjust the radius as needed
            bottomRight: Radius.circular(30), // Adjust the radius as needed
          ),
        ),
        shadowColor: Colors.orange[100],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_sharp, color: Colors.orange)),
        actions: [
          GestureDetector(
              child: Icon(
            Icons.search_rounded,
            color: Colors.orange,
          )),
          SizedBox(width: 10),
          GestureDetector(
              child: Icon(Icons.notifications, color: Colors.orange)),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              CarouselSlider.builder(
                itemBuilder: (context, index, realIndex) {
                  return Container(
                      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://t3.ftcdn.net/jpg/05/02/18/64/360_F_502186443_Kubg3Wl76uE8BYl1tcAuYYXgGKAaO6r4.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ]),
                      width: double.maxFinite,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                      ));
                },
                itemCount: 3,
                options: CarouselOptions(
                  aspectRatio: 1.8,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 30),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    // setState(() {
                    //   _currentIndex = index;
                    // });
                  },
                ),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 7,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.7),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x23000000),
                          blurRadius: 6,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                      color: colorNames[index]['color'],
                      borderRadius: BorderRadius.circular(
                          14), // Adjust the radius as needed
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width: 10),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange[100],
                                shape: BoxShape.circle),
                            child: Icon(Icons.person_2_rounded)),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(colorNames[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 13))),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Business Promoter",
                        style: TextStyle(
                            color: Color(0xFF173564),
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 15),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 8 / 4,
                        crossAxisSpacing: 19,
                        mainAxisSpacing: 12,
                        crossAxisCount: 2,
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x23000000),
                                blurRadius: 6,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                12), // Adjust the radius as needed
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[100]),
                                  child: Icon(Icons.person_2)),
                              SizedBox(width: 15),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text('250',
                                        style: TextStyle(
                                            color: Colors.indigo,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text('Total\nPromoter',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Farmer Dashboard",
                        style: TextStyle(
                            color: Color(0xFF173564),
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 15),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 9.5 / 4.5,
                        crossAxisSpacing: 19,
                        mainAxisSpacing: 12,
                        crossAxisCount: 2,
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x23000000),
                                blurRadius: 6,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                12), // Adjust the radius as needed
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[100]),
                                  child: Icon(Icons.person_2)),
                              SizedBox(width: 15),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('250',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800)),
                                  Text('Total Farmers',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700)),
                                ],
                              )),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
