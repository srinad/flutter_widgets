import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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
          'Orders',
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
              child: Text(
                'Help',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x23000000),
                          blurRadius: 1,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT2UrAVN3MXgg5JU9GtpFinnTfJkxlGypV-RzdxCkBMqh_kESv4',
                                      scale: 5,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Raj Palace Restaurant',
                                              style: GoogleFonts.mulish(
                                                color: Color(0xFF26192E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.right,
                                                  '₹',
                                                  style: GoogleFonts.mulish(
                                                    color: Color(0xFFF9408E),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.right,
                                                  '550',
                                                  style: GoogleFonts.mulish(
                                                    color: Color(0xFF2C1E35),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Ayyappa Society, Madhapur, Hyderabad',
                                          style: GoogleFonts.mulish(
                                            color: Color(0xFF606060),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    'Order items',
                                    style: GoogleFonts.mulish(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'ID: ',
                                          style: TextStyle(
                                            color: Color(0xFF2C1E35),
                                            fontSize: 13,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '#8456646',
                                          style: TextStyle(
                                            color: Color(0xFF606060),
                                            fontSize: 13,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Veg Sandwich, Baked Deserts',
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 10,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFFF9408E)),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Delivered',
                                        style: GoogleFonts.mulish(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '01-02-2022 at 09:30 pm',
                                    style: GoogleFonts.mulish(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey[200],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                clipBehavior: Clip.none,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50, color: Color(0xFFF8356F)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Rate Order',
                                  style: GoogleFonts.roboto(
                                    color: Color(0xFFF8356F),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                clipBehavior: Clip.none,
                                style: ElevatedButton.styleFrom(
                                  // backgroundColor: Colors.white,
                                  primary: Color(0xFF1A1A1A),
                                  shape: RoundedRectangleBorder(
                                    // side: BorderSide(width: 0.50, color: Color(0xFFB8B8B8)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'View Details',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
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
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
