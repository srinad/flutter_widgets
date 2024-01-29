import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixhomescreen/netflix_body.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(children: [
                Opacity(
                  opacity: 0.68,
                  child: Container(
                    width: 376,
                    height:400,
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
                    padding:EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Enter OTP',
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
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        6,
                        (index) => Container(
                          width: 40,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFF303030),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          child: TextField(
                            controller: controllers[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                             style: TextStyle(
              color: Colors.white, // Set the text color to black
            ),
                            decoration: InputDecoration(
                            border: InputBorder.none,
                              counterText: '', // Remove the counter text
                            ),
                            onChanged: (value) {
                              if (value.isNotEmpty &&
                                  index < controllers.length - 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
            // Navigate to the next page when 'Sign In' is clicked
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreenBody(),
              ),
            );
          },
          child: Container(
         decoration: BoxDecoration(
            
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Sign In',
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
          SizedBox(height: 160,),
           Text(
            'Resend code (30s)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
              'Your number is safe with us, we don’t use your number for any unsolicited communication.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
                
              ])),
        ));
  }
}
