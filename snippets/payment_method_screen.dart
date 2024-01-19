import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_icon_button/loading_icon_button.dart';

class PaymentMethod2 extends StatefulWidget {
  const PaymentMethod2({super.key});

  @override
  State<PaymentMethod2> createState() => _PaymentMethod2State();
}

class _PaymentMethod2State extends State<PaymentMethod2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3C0377),
        leading: Icon(Icons.navigate_before_outlined,
            color: Color.fromARGB(226, 240, 14, 82), size: 25),
        title: Text(
          'Payment Method',
          style: GoogleFonts.mulish(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.59, -0.81),
                    end: Alignment(-0.59, 0.81),
                    colors: [
                      Color(0xFF831E77),
                      Color(0xFF3C0377),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bill Amount',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '₹',
                            style: GoogleFonts.poppins(
                              color: Color(0xFFF8356F),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '180',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              Text(
                'Recently Used',
                style: GoogleFonts.poppins(
                  color: Color(0xFF313131),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 14),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x07000000),
                      blurRadius: 40,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.radio_button_checked, color: Color(0xFFF8356F)),
                    SizedBox(width: 15),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.network(
                        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRjj01wsAGpKSmJQgEf5JArONolEdZgdETU6r7d8_TD_VMIR0Vv',
                        scale: 7,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Google pay',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF2D2D2D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Text(
                'Credit & Debit Card',
                style: GoogleFonts.poppins(
                  color: Color(0xFF313131),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 14),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x07000000),
                      blurRadius: 40,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Icon(Icons.add, color: Color(0xFFF8356F))),
                    SizedBox(width: 14),
                    Column(
                      children: [
                        Text(
                          'Add New Card',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF2D2D2D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Avoid ringing bell',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF757575),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              Text(
                'UPI',
                style: GoogleFonts.poppins(
                  color: Color(0xFF313131),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 14),
              Container(
                padding: EdgeInsets.symmetric(vertical: 29, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x07000000),
                      blurRadius: 40,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.radio_button_off, color: Color(0xFF757575)),
                        SizedBox(width: 11),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFDDDDDD)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4BRZjFykarhFKKOUB3LeUsxR-E-ksHQJeg&usqp=CAUv',
                            scale: 7,
                          ),
                        ),
                        SizedBox(width: 14),
                        Text(
                          'Phone Pay',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF2D2D2D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Divider(
                        color: Color(0xFFDDDDDD), endIndent: 34, indent: 64),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 7),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFDDDDDD)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.add, color: Color(0xFFF8356F))),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Add New UPI ID',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF2D2D2D),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'You need to have a registered UPI ID',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF757575),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Text(
                'More Payment Options',
                style: GoogleFonts.poppins(
                  color: Color(0xFF313131),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x07000000),
                      blurRadius: 40,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Divider(
                          color: Color(0xFFDDDDDD), endIndent: 0, indent: 17),
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Icon(Icons.radio_button_off, color: Color(0xFF757575)),
                        SizedBox(width: 11),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFDDDDDD)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Color(0xFFF8356F),
                            )
                            // Image.network(
                            //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4BRZjFykarhFKKOUB3LeUsxR-E-ksHQJeg&usqp=CAUv',
                            //   scale: 7,
                            // ),
                            ),
                        SizedBox(width: 13),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wallets',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF2D2D2D),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Paytm, PhonePe, Amazon Pay & More',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF757575),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 52),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                decoration: ShapeDecoration(
                  color: Colors.pink[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTNwqNkUGi0w31Vu2W-AVzkcEnTQWbrpJnNaUSHUL496I4DFJQy',
                            scale: 7,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Google Pay',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF2D2D2D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 12),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          child: Icon(Icons.keyboard_arrow_down_outlined,
                              color: Color(0xFF3C0377)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '₹180',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF3C0377),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: ArgonButton(
                  height: 50,
                  width: 300,
                  borderRadius: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1.00, -0.05),
                        end: Alignment(1, 0.05),
                        colors: [
                          Color(0xFFFA4069),
                          Color(0xFFFF7350),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Pay',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  onTap: (startLoading, stopLoading, btnState) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
