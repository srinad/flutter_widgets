import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class OtpScreenThree extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  OtpScreenThree({super.key, this.hintText});
  final hintText;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[600],
        resizeToAvoidBottomInset: false,
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: ShapeDecoration(
                shadows: [
                  BoxShadow(
                    color: Color.fromARGB(40, 0, 0, 0),
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  )
                ],
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Image.network(
                  'https://img.freepik.com/premium-vector/mobile-otp-secure-verification-method-mobile-phone-hand-onetime-password-secure-transaction-security-one-time-password-verification-mobile-app-smartphone-screen-2step-verification_735449-279.jpg?w=2000'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Verification',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 49, 8, 100)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'You will get a OTP via SMS',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 49, 8, 100)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        obscureText: true,
                        // controller: emailaddressController,
                        // focusNode: FocusNode(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        decoration: InputDecoration(
                          // hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20.00,
                            ),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 49, 8, 100),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 49, 8, 100),
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20.00,
                            ),
                            borderSide: BorderSide.none,
                          ),
                          isDense: true,
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 50.0,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 49, 8, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  25.0), // Set your border radius here
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Verify"))),
                  SizedBox(
                    height: 40,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Didn’t receive the OTP ?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 49, 8, 100),
                          fontWeight: FontWeight.w500),
                      // style: AppStyle
                      //     .txtPoppinsRegular14Bluegray100a2
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text(
                          "Resend again",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 49, 8, 100),
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ))
                  ])
                ],
              ),
            )
          ],
        ));
  }
}
