import 'package:flutter/material.dart';

class TableBookingDetails extends StatefulWidget {
  const TableBookingDetails({super.key});

  @override
  State<TableBookingDetails> createState() => _TableBookingDetailsState();
}

class _TableBookingDetailsState extends State<TableBookingDetails> {
  List<Map<String, dynamic>> title = [
    {
      'title': 'Booking ID',
      'subtitle': '#3213212',
    },
    {
      'title': 'Booking Date',
      'subtitle': 'Monday, 22 Jan 2022',
    },
    {
      'title': 'Booking time',
      'subtitle': '09:30 PM',
    },
    {
      'title': 'Number of people',
      'subtitle': '4',
    },
  ];
  List<Map<String, dynamic>> details = [
    {
      'details': 'Your name',
      'personaldetails': 'Shravan Prajapti',
    },
    {
      'details': 'Mobile number',
      'personaldetails': '+91 8328233273',
    },
    {
      'details': 'Email',
      'personaldetails': 'shrvn850@gmail.com',
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
          'Table Booking Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT2UrAVN3MXgg5JU9GtpFinnTfJkxlGypV-RzdxCkBMqh_kESv4',
                          scale: 3.5,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Raj Palace Restaurant',
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Ayyappa Society,\nMadhapur, Hyderabad',
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
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Details',
                    style: TextStyle(
                      color: Color(0xFF313131),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(color: Color.fromARGB(255, 238, 236, 236),thickness: 1.5,)),
                  ListView.builder(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title[index]['title'],
                              style: TextStyle(
                                color: Color(0xFF333232),
                                fontSize: 15,
                                fontFamily: 'Acumin Pro',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              title[index]['subtitle'],
                              style: TextStyle(
                                color: Color(0xFF333232),
                                fontSize: 13,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 22),
                  Text(
                    'Personal Details',
                    style: TextStyle(
                      color: Color(0xFF313131),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(color: Color.fromARGB(255, 238, 236, 236),thickness: 1.5,),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              details[index]['details'],
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              details[index]['personaldetails'],
                              style: TextStyle(
                                color: Color(0xFF333232),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 134),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Thank you For Booking Table ',
                        style: TextStyle(
                          color: Color(0xFF191919),
                          fontSize: 20,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 144),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
