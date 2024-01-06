import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddAddressScreenThree extends StatefulWidget {

  AddAddressScreenThree({
    super.key,
    thisintText,
  });

  @override
  State<AddAddressScreenThree> createState() => _AddAddressScreenThreeState();
}

class _AddAddressScreenThreeState extends State<AddAddressScreenThree> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
bool isLocationSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              'https://i.pinimg.com/474x/e1/81/b7/e181b7cb6dec98c4d8efb94cfa77471c.jpg',
              scale: 2,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 5),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(30.0),
                  //     topRight: Radius.circular(30.0)),
                  color: Colors.blueGrey[100]),
              child: Column(
                children: [
                  Form(
                    // key:  formKey,
                    child: Container(
                      
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Add New Address',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                              Text(
                                'TITLE',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5),
                              TextFormField(
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    // hintText: 'Email address',
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
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
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
                              SizedBox(height: 20),
                              Text(
                                'NEW ADDRESS',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5),
                              TextFormField(
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    // hintText: 'Email address',
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
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
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
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isLocationSelected =
                                                  !isLocationSelected;
                                            });
                                          },
                                          icon: Icon(
                                            isLocationSelected
                                                ? Icons.radio_button_checked
                                                : Icons.radio_button_unchecked,
                                            color: Colors.orange,
                                          )),
                                      Text(
                                        'Use current location',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                              SizedBox(
                                height: 10,
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                      onPressed: () {
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         ProfileScreen(),
                                        //   ),
                                        // );
                                      },
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
                                        "SAVE",
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
    );
  }
}
