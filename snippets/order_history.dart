import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0x23000000),
            blurRadius: 5,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRO2hnO-SKUoFHfRK42oZpjHyawEXj3tpsBMyI50hPSk_Gsc5IV',
                      scale: 5,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Towny Fresh',
                                style: GoogleFonts.mulish(
                                  color: Color(0xFF26192E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.right,
                                '₹550',
                                style: GoogleFonts.mulish(
                                  color: Color(0xFF2C1E35),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Madhapur, Hyderabad (500081)',
                                style: GoogleFonts.mulish(
                                  color: Color(0xFF606060),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '500gm',
                                style: GoogleFonts.mulish(
                                  color: Color(0xFF7C7C7C),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Order items',
                      style: GoogleFonts.mulish(
                        color: Color(0xFF2C1E35),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.04),
                              end: Alignment(-1, -0.04),
                              colors: [Color(0xFFF8356F), Color(0xFFFF7350)],
                            ),
                          ),
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
                            color: Color(0xFF2C1E35),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '01-02-2022 at 09:30 pm',
                      style: GoogleFonts.mulish(
                        color: Color(0xFF2C1E35),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey[100],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  clipBehavior: Clip.none,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.white, // Set the background color to white
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFF8356F)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Rate Order', // Remove unnecessary textAlign property
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
                    primary: Color(0xFFF8356F),
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
    );
  }
}
