import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearByScreen extends StatefulWidget {
  const NearByScreen({super.key});

  @override
  State<NearByScreen> createState() => _NearByScreenState();
}

class _NearByScreenState extends State<NearByScreen> {
  bool isSwitched = false;
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
          'Nearby',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(20),
                    // topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19616161),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: 6,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Raj Palace Restaurant',
                        style: GoogleFonts.mulish(
                          color: Color(0xFF1A1A1A),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Color(0xFFF7218E),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Chinese, North Indian',
                    style: GoogleFonts.mulish(
                      color: Color(0xFF606060),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFFF7218E),
                        size: 15,
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Madhapur, Hyderabad (500081)',
                        style: GoogleFonts.mulish(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFF7218E)),
                      ),
                      SizedBox(width: 2),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Delivery in ',
                              style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 12,
                                fontFamily: 'Acumin Pro',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),
                            ),
                            TextSpan(
                              text: '20 mins',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 12,
                                fontFamily: 'Acumin Pro',
                                fontWeight: FontWeight.w700,
                                height: 0.11,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xFFF7218E),
                          ),
                          SizedBox(width: 2),
                          Text(
                            '4.5',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF7218E)),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '₹200/-',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'For one',
                            style: TextStyle(
                              color: Color(0xFF606060),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '12k+ Reviews',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF7218E)),
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Opening hours',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                              height: 0.14,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '10AM-09PM',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              height: 0.10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 13),
                  Divider(),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.table_bar_outlined,
                            color: Color(0xFFF7218E),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Book Restaurant Now!',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              primary: Color(0xFF6C19F5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {
                              // Code to execute when button is pressed.
                            },
                            child: Text(
                              'Book',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 60,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: ShapeDecoration(
                          color: Color(0xFFE2E2E2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvHilBoPI4LyZ-HjsKlqcW0u4EzMMVqa7y4EiO4fFesptq5buq',
                                scale: 2.5,
                              ),
                            ),
                            SizedBox(width: 5),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '60% ',
                                            style: TextStyle(
                                              color: Color(0xFF1A1A1A),
                                              fontSize: 16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'OFF',
                                            style: TextStyle(
                                              color: Color(0xFF1A1A1A),
                                              fontSize: 12,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'UPTO..',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 10,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'USE CODE :',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 10,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'FLAT...',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                            // Icon(Icons.verified_outlined,size: 30,)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Veg only',
                    style: TextStyle(
                      color: Color(0xFF606060),
                      fontSize: 12,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: Colors.green, // Customize the active color
                    trackColor: Colors.grey, // Customize the track color
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Popular',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            Divider(color: Color(0xFFF9408E), endIndent: 18, indent: 18),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x28000000),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        ),
                      ],
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSoeN5Pkllfwl7AdNvwqw_1oFQUbDZYN242DITNlx9bBCx6HP1J',
                      //         scale: 2))
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.network(
                            container1[index]['imagePath'],
                            scale: 1.4,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    container1[index]['name'],
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_box_outlined,
                                    color: Color(0xFF03C500),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '₹120',
                                    style: TextStyle(
                                      color: Color(0xFF606060),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '₹98',
                                    style: TextStyle(
                                      color: Color(0xFFF9408E),
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF6C19F5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Text(
                                    'Add',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                ),
                              ) // ElevatedButton(
                              //   style: ElevatedButton.styleFrom(
                              //     // padding: EdgeInsets.symmetric(
                              //     //     horizontal: 30, vertical: 0),
                              //     primary: Color(0xFF6C19F5),
                              //     shape: RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(10),
                              //     ),
                              //   ),
                              //   onPressed: () {
                              //     // Code to execute when button is pressed.
                              //   },
                              //   child: Text(
                              //     'Book',
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize: 14,
                              //         fontWeight: FontWeight.w700),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Main Courses',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            Divider(color: Color(0xFFF9408E), endIndent: 18, indent: 18),
            // SizedBox(height: 10),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Veg Sandwich',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 220,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Snack on this healthy bite made from fresh slices of bread filled with..',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'M',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'ore',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '₹98',
                              style: TextStyle(
                                color: Color(0xFFF9408E),
                                fontSize: 20,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS9d4oEp39Sj-zqjgOjXUGYoZi_oS06CwgtZh6ss8AxPGTXpjin',
                                scale: 2.2,
                              ),
                            ),
                            Positioned(
                                left: 3,
                                bottom: -10,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 96,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF9408E),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Text(
                                    'Add',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    indent: 10,
                    endIndent: 10,
                  );
                },
                itemCount: 3),
                SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
