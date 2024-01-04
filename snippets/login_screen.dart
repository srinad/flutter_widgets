import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class LoginScreen extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key, this.hintText});
  final hintText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://img.lovepik.com/element/45009/2341.png_860.png',
                        scale: 5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.maxFinite,
                            margin: const EdgeInsets.only(top: 45),
                            child: TextFormField(
                                // controller: emailaddressController,
                                // focusNode: FocusNode(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Email address',
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
                                      color: Colors.white70,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
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
                          )),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.maxFinite,
                            margin: const EdgeInsets.only(top: 45),
                            child: TextFormField(
                                // controller: emailaddressController,
                                // focusNode: FocusNode(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Password',
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
                                      color: Colors.white70,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white70,
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
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                // onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(top: 24),
                                  child: Text("Forgot Password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ))))),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(1.00, -0.05),
                                  end: Alignment(-1, 0.05),
                                  colors: [
                                    Color(0xFFFF9815),
                                    Color(0xFFFE5926)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(25)),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  fixedSize: Size(
                                    double.maxFinite,
                                    40,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
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
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 9),
                                child: SizedBox(
                                    width: 132,
                                    child: Divider(
                                      height: 1,
                                      thickness: 1,
                                      color: Colors.white,
                                    ))),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("or",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 9),
                                child: SizedBox(
                                    width: 146,
                                    child: Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: Colors.white,
                                        indent: 14)))
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    left: 43, top: 12, right: 43, bottom: 12),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 85, 84, 84),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // CustomImageView(
                                      //     imagePath: ImageConstant.imgGoogle2,
                                      //     height: getSize(25),
                                      //     width: getSize(25),
                                      //     margin: getMargin(bottom: 1)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, top: 4, bottom: 3),
                                          child: Text("Google",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              )))
                                    ])),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 35, top: 11, right: 35, bottom: 11),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 85, 84, 84),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // CustomImageView(
                                      //     imagePath: ImageConstant.imgFacebook11,
                                      //     height: getSize(27),
                                      //     width: getSize(27),
                                      //     margin: getMargin(bottom: 1)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, top: 4, bottom: 5),
                                          child: Text("Facebook",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              )))
                                    ]))
                          ]),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do you already have an account?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                )),
                            GestureDetector(
                                onTap: () {},
                                child: Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text("SignUp Now",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline))))
                          ])
                    ]),
              ),
            )));
  }
}
