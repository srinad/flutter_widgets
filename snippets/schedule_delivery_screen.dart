import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleDelivery extends StatefulWidget {
  const ScheduleDelivery({super.key});

  @override
  State<ScheduleDelivery> createState() => _ScheduleDeliveryState();
}

class _ScheduleDeliveryState extends State<ScheduleDelivery> {
  List<Map<String, dynamic>> details = [
    {
      'details': 'Name',
      'personaldetails': 'R. Avinash',
    },
    {
      'details': 'E-mail',
      'personaldetails': 'avinash@techweblabs.com',
    },
    {
      'details': 'Phone no',
      'personaldetails': '+91 9704611443',
    },
    {
      'details': 'Alternate mob no',
      'personaldetails': '+91 9704611443',
    },
  ];
  bool isSelected = false;
  bool isselect = false;

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
          'Raj Palace Restaurant',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 500,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRxFfHsfLhtpdZuhWEvwQeQK5vPXGXU0MA4invJcZ-BL9QRIxra'))),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Color(0xFFF7218E),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Delivery time',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '7.30pm - 8.30pm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF05161B),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 11, horizontal: 15),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color:
                                isSelected ? Colors.pink : Colors.transparent,
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                isSelected
                                    ? Icons.radio_button_on
                                    : Icons.radio_button_off,
                                color: isSelected
                                    ? Colors.pink
                                    : Color(0xFFF7218E),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Order now',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          Text(
                            '30 - 40 mins',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF05161B),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isselect = !isselect;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 11),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: isselect ? Colors.pink : Colors.transparent,
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                isselect
                                    ? Icons.radio_button_on
                                    : Icons.radio_button_off,
                                color:
                                    isselect ? Colors.pink : Color(0xFFF7218E),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Schedule a head',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Text(
                                'Select time and date',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E90FF),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xFF1E90FF),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x28000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Office |',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.delivery_dining_outlined,
                              color: Color(0xFF1E90FF),
                            ),
                          ],
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFF757575)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.switch_access_shortcut,
                                  color: Color(0xFFF7218E)),
                              Icon(Icons.keyboard_arrow_down_outlined,
                                  color: Color(0xFFF7218E))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: 253,
                      child: Text(
                        '1st Floor, Spline Arcade, Flat no 102, Plot no 1208, Ayyappa Society, Hyderabad - 500081',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border:
                              Border.all(width: 1, color: Color(0xFFFCE4ED)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.add,
                        color: Color(0xFFF7218E),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Add Instructions to store',
                      style: TextStyle(
                        color: Color(0xFFBCBCBC),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x28000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
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
                          'Personal details',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFF1E90FF),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'E-mail',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Phone no',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Alternate mob no',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'nonito',
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 2.5),
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'nonito',
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 2.5),
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'nonito',
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 2.5),
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'nonito',
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'R. Avinash',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'avinash@techweblabs.com',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '+91 9704611443',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '+91 9704611443',
                              style: TextStyle(
                                color: Color(0xFF383434),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  Text(
                    'Tips',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.error,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add tips',
                      style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 38,
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 23),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFCFCFCF)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '₹',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFFEB236B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '10',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFF1A1A1A),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '1 Item',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '₹ 142',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => UpdatePersonalDetails()),
                        // );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: ShapeDecoration(
                          color: Color(0xFFEB236B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
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
