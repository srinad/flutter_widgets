import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen7 extends StatefulWidget {
  const HomeScreen7({super.key});

  @override
  State<HomeScreen7> createState() => _HomeScreen7State();
}

class _HomeScreen7State extends State<HomeScreen7> {
  List<Map<String, dynamic>> container1 = [
    {
      'imagePath':
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS9d4oEp39Sj-zqjgOjXUGYoZi_oS06CwgtZh6ss8AxPGTXpjin',
      'name': 'Burger',
      'color': Color(0xFFFBDCDA),
    },
    {
      'imagePath':
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNveyeJ5DUzlpBKewgMO53vmHrNEIDc7Q5Gg4OcgS3UKzz7tUb',
      'name': 'Drinks',
      'color': Color(0xFFD4EEF3),
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZi2xCFyHFNmuDqtkpYsFMsJnbRvLAVQoKCOdrr4PO3vUTISh1',
      'name': 'Pizza',
      'color': Color(0xFFFBDCDA),
    },
    {
      'imagePath':
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTe_4OdHRn5K7cjbPICDw_-GjljuN6IHDHZJUMIIXQX5_jqXNPk',
      'name': 'Indian',
      'color': Color(0xFFEFECFE7),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deliver to',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFFFF2F08),
                          ),
                          Text(
                            'New york ,USA',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFFFF2F08),
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGb8PmEaRgeXshs4ycQC8wyYl8h6RffDbg-A&usqp=CAU'),
                        ),
                      ),
                      Positioned(
                          left: 45,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                color: Color(0xFFFF2F08),
                                shape: BoxShape.circle),
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search your food here...',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF2F08),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: Color(0xFFFF2F08),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(left: 15, top: 30),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: container1[index]['color']),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              container1[index]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Spaicy Taste',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF757575)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 29,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            container1[index]['imagePath'],
                            scale: 3.2,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: Color(0xFFFF2F08),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 223,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: EdgeInsets.only(
                          left: 15, top: 5, bottom: 5, right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.network(
                              'https://bsmedia.business-standard.com/_media/bs/img/article/2023-09/14/full/1694673859-4182.jpeg?im=FeatureCrop,size=(826,465)',
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chicken Burger',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Fast Food',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 20,
                                          color: Color(0xFFFF2F07),
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          '4.7',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '941 Ratings',
                                          style:
                                              TextStyle(color: Colors.black45),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xFFFF2F07),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '1 KM',
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                        padding: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFF2F07),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          '\$15.89',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near by restaurants',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                            color: Color(0xFFFF2F08),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTzlsphpwkMXJFHqXvrzQnMJtcjHZuBl3Ucx-DS0hdbHnhgbChV',
                                scale: 2.3,
                              ),
                            ),
                            Positioned(
                              bottom: -5,
                              child: Container(
                                alignment: Alignment.center,
                                width: 98,
                                height: 20,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.route_outlined,
                                          color:
                                              Color.fromRGBO(249, 64, 142, 1),
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
      ),
    );
  }
}
