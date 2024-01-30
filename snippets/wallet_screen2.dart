import 'package:flutter/material.dart';

class WalletScreen2 extends StatefulWidget {
  const WalletScreen2({super.key});

  @override
  State<WalletScreen2> createState() => _WalletScreen2State();
}

class _WalletScreen2State extends State<WalletScreen2> {
  List<Map<String, dynamic>> details = [
    {
      'details': 'Anjaneya restaurant',
      'balance': 'Paid : ',
      'color': Color(0xFFFF3B3B),
    },
    {
      'details': 'Chaitanya restaurant',
      'balance': 'Paid : ',
      'color': Color(0xFFFF3B3B),
    },
    {
      'details': 'Refferal to shrvan',
      'balance': 'Credit : ',
      'color': Color(0xFF0EB80E),
    },
    {
      'details': 'Mera restaurant',
      'balance': 'Cashback : ',
      'color': Color(0xFF0EB80E),
    },
    {
      'details': 'Mera restaurant',
      'balance': 'Refund : ',
      'color': Color(0xFF0EB80E),
    },
    {
      'details': 'Add Balance',
      'balance': 'Credit : ',
      'color': Color(0xFF0EB80E),
    },
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
          'Notification settings',
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
            child: Icon(Icons.settings, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 19),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Text(
                          'Available balance',
                          style: TextStyle(
                            color: Color(0xFFF3F3F3),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Positioned(
                            top: -10,
                            right: -13,
                            child: Icon(
                              Icons.help_outline_outlined,
                              color: Colors.white,
                              size: 15,
                            ))
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      '₹600',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 11),
                    Container(
                      alignment: Alignment.center,
                      width: 147,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.30000001192092896),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Add money',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF1E90FF)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weekly',
                          style: TextStyle(
                            color: Color(0xFF1E90FF),
                            fontSize: 10,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 18,
                        )
                        // Icon(
                        //   Icons.arrow_drop_down,
                        //   color: Colors.black,
                        // )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 14),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => OrderDetailsScreen()),
                        // );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  details[index]['details'],
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: details[index]['balance'],
                                        style: TextStyle(
                                          color: details[index]['color'],
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' - ₹10',
                                        style: TextStyle(
                                          color: details[index]['color'],
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Order Id: ',
                                        style: TextStyle(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '8456646',
                                        style: TextStyle(
                                          color: Color(0xFF757575),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '23 June 2022, 09:30 pm',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            if (index == 4) Divider(),
                            if (index == 4)
                              Text(
                                'Due to damage of package items refund initiated',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
