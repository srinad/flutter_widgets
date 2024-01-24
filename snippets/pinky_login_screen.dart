import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.00, 0.08),
          end: Alignment(-1, -0.08),
          colors: [Color(0xFF6D19F5), Color(0xFFF9408E)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'to',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Pinky Foods',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )),
            SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.only(top: 50, bottom: 20, left: 30, right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Form(
                      // key:  formKey,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Enter mobile number',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFFF7218E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 15),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0.60, color: Colors.black),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF6D19F5)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Color(0xFF6D19F5)),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, top: 5, bottom: 5),
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              right: BorderSide(
                                                  width: 1.10,
                                                  color: Colors
                                                      .red), // Vertical divider
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '+91',
                                              style: GoogleFonts.mulish(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )),
                                    ),
                                  ),
                                  onChanged: (value) {},
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF6C19F5),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            fixedSize: Size(
                                              double.maxFinite,
                                              20,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                20.00,
                                              ),
                                            )),
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 287.06,
                                  child: Text(
                                    'Your number is safe with us, we don’t use your number for any unsolicited communication.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                      color: Color(0xFF313131),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
