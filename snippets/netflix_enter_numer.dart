import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixhomescreen/EnterOTP.dart';

class EnterNumber extends StatefulWidget {
  const EnterNumber({super.key});

  @override
  State<EnterNumber> createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Opacity(
                opacity: 0.68,
                child: Container(
                  width: 376,
                  height: 415,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.7200000286102295)
                      ],
                    ),
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDx2B0dOE_SJqfvMP05Q2oUTRgFhNKfXDxvg&usqp=CAU',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
             
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Enter Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 343,
                height: 50,
                decoration: ShapeDecoration(
                  color: Color(0xFF303030),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'IN +91',
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color:
                          Colors.white, // Set the color of the vertical divider
                      width: 1,
                      endIndent: 6,
                      indent: 6, // Set the width of the vertical divider
                    ),
                    Expanded(
                      child:Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    maxLength: 10,
    style: TextStyle(
              color: Colors.white, // Set the text color to black
            ), // Set the maximum length for the phone number
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      hintText: 'Enter Phone Number',
      hintStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
      border: InputBorder.none,
      counterText: '', // Remove the counter text
    ),
  ),
),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 343,
                height: 47,
                decoration: ShapeDecoration(
                  color: Color(0xFFC50000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 4,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the next page when 'Get OTP' is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Get OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 170,
              ),
              Text(
                'Sign in is protected by Google reCAPTCHA to ensure\nyou’re not a bot.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
