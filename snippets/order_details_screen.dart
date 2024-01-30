import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  List bill = [
    'Delivery charges | 4.5kms',
    'Packing charges',
    'Surge charges',
    'GST',
    'GST',
    'Service fee',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFFFBFBFB),
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
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Order details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.help_outline,
                  color: Color.fromARGB(255, 236, 124, 165),
                  size: 19,
                ),
                SizedBox(width: 4),
                Text(
                  'Help',
                  style: TextStyle(
                    color: Color(0xFFEB236B),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Order arriving',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '5 mins early',
                            style: TextStyle(
                              color: Color(0xFF1E90FF),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.network(
                          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQRSe2CzeYx18JeSXlpzSugmPvAk5gXAzhkl9WeGBQzrp5TqHLo',
                          scale: 10,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Preparing',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSK1dK0phNf8KozAmltkEqigGeD6dFV6TmgCvwNMcLNndD_PCQi',
                              scale: 4,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Raj palace restaurant',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 17,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                '01-07-2022 at 10:30 pm',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'ID: ',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '#95513410',
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xFFD7D7D7))),
                              child: Icon(
                                Icons.wifi_calling_3_outlined,
                                color: Color(0xFF1E90FF),
                                size: 18,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xFFD7D7D7))),
                              child: Icon(
                                Icons.message_outlined,
                                color: Color(0xFF1E90FF),
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Order',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'On Demand',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Divider(thickness: 1.5),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_box_outlined,
                                  size: 20,
                                  color: Color(0xFF03C500),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Veg Sandwich',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    children: [
                                      Text(
                                        '1',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF616161),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 9),
                                      Text(
                                        'X',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '₹170',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  '₹170',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          thickness: 1.2,
                        );
                      },
                      itemCount: 2),
                  Divider(thickness: 1.2),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₹170',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(thickness: 1.2),
                  SizedBox(height: 12),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      if (index == 0 || index == 3) {
                        String customText =
                            (index == 0) ? 'Charges' : 'Taxes and Fee';

                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    customText,
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    color: Color(0xFF1E90FF),
                                  ),
                                ],
                              ),
                              Text(
                                '₹10',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Text(
                                    bill[index],
                                    style: TextStyle(
                                      color: Color(0xFF757575),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Positioned(
                                    top: -10,
                                    right: -15,
                                    child: Icon(
                                      Icons.error,
                                      color: Colors.grey,
                                      size: 13,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '₹10',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF757575),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 18),
                  Divider(thickness: 1.5),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                          color: Color(0xFFFF0000),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '-₹20',
                        style: GoogleFonts.poppins(
                          color: Color(0xFFFF0000),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 18),
                  Divider(thickness: 1.5),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹',
                              style: GoogleFonts.poppins(
                                color: Color(0xFFEB236B),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '180',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.right,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 3,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment method',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' Ref no : 95513410',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pay with cash',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '₹250',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Avoid cash transactions',
                        style: TextStyle(
                          color: Color(0xFF8E8E8E),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF1E90FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          // Code to execute when button is pressed.
                        },
                        child: Text(
                          'Pay online',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  ClipOval(
                      child: Image.network(
                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR9wcUEU4uwtu6bQNrJv1GEeGey63N35kebA5n1iZYCGSA2qvVP',
                    scale: 3,
                  )),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'I’m Shrvn',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xFFD7D7D7))),
                                  child: Icon(
                                    Icons.wifi_calling_3_outlined,
                                    color: Color(0xFF1E90FF),
                                    size: 18,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xFFD7D7D7))),
                                  child: Icon(
                                    Icons.message_outlined,
                                    color: Color(0xFF1E90FF),
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          'Your delivery partner',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'I have completed 300+ five star deliveries',
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 3,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFFDDDDDD)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Icon(
                      Icons.home,
                      color: Color(0xFF1E90FF),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Deliver to Home',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: 270,
                        child: Text(
                          '1st Floor, Spline Arcade, Flat no 102, Plot no 1208, Ayyappa Society, Madhapur, Telangana 500081',
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ReferScreen()),
                // );
              },
              child: Container(
                width: 345,
                height: 50,
                decoration: ShapeDecoration(
                  color: Color(0xFFEB236B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'Track order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
