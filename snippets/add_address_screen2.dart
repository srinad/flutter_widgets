import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddAddressScreenTwo extends StatefulWidget {
  AddAddressScreenTwo({
    super.key,
    thisintText,
  });

  @override
  State<AddAddressScreenTwo> createState() => _AddAddressScreenTwoState();
}

class _AddAddressScreenTwoState extends State<AddAddressScreenTwo> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List _delivery = ['Madhapur', 'Kpbh'];

  var deliveryvalue = 'delivery_area';

  bool isdropdownOpwn = false;

  bool isHomeSelected = false;

  bool isOfficeSelected = false;

  bool isOtherSelected = false;

  // bool isSelectedCard = false;
  int selectedCardIndex = -1;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _location = TextEditingController();

  final TextEditingController _address = TextEditingController();

  final TextEditingController _addresslocation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Add Address',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Add your location",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Let’s find your unforgettable place. Add your location below to get started",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF9CA3AF),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                maxLines: 1,
                                obscureText: false,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please select your location";
                                  }

                                  return null;
                                },
                                controller: _location,
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  prefixIcon: Icon(Icons.location_on),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 19, horizontal: 14),
                                  hintText: "Select location",
                                  filled: true,
                                  fillColor: Colors.white,
                                  suffixIcon: Icon(
                                    Icons.directions,
                                    color: Color(0xFF840008),
                                  ),
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9CA3AF),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Add Address",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                maxLines: 1,
                                obscureText: false,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your flat building street";
                                  }

                                  return null;
                                },
                                controller: _address,
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  // border: InputBorder.none,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),

                                  prefixIcon: Icon(Icons.push_pin_outlined),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 19, horizontal: 14),
                                  hintText:
                                      "Enter flat, building, street etc...",
                                  filled: true,

                                  fillColor: Colors.white,
                                  // suffixIcon: Image.asset(Images.DIRECTION, scale: 3),
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9CA3AF),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                maxLines: 1,
                                obscureText: false,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your location";
                                  }

                                  return null;
                                },
                                controller: _addresslocation,
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                  // border: InputBorder.none,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),

                                  prefixIcon: Icon(Icons.location_on),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 19, horizontal: 14),
                                  hintText: "Enter City",
                                  filled: true,

                                  fillColor: Colors.white,
                                  // suffixIcon: Image.asset(Images.DIRECTION, scale: 3),
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9CA3AF),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9CA3AF).withOpacity(0.2),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButtonFormField<String>(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select your delivery area";
                                      }
                                      return null;
                                    },
                                    items: List.generate(_delivery.length,
                                        (index) {
                                      return DropdownMenuItem<String>(
                                        value: _delivery[index],
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Row(
                                          children: [
                                            SizedBox(width: 10),
                                            Container(
                                              child: Text(
                                                _delivery[index],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                    onChanged: (value) {
                                      setState(() {
                                        deliveryvalue = value!;
                                      });
                                    },
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.zero,
                                      // border: InputBorder.none,
                                      isDense: true,
                                      prefixIcon: Icon(Icons.location_on),
                                      hintText: 'Select Delivery Area',
                                      hintStyle: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isHomeSelected = !isHomeSelected;
                                            });
                                          },
                                          icon: Icon(
                                            isHomeSelected
                                                ? Icons.radio_button_checked
                                                : Icons.radio_button_unchecked,
                                            color: Color(0xFF840008),
                                          )),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isOfficeSelected =
                                                  !isOfficeSelected;
                                            });
                                          },
                                          icon: Icon(
                                            isOfficeSelected
                                                ? Icons.radio_button_checked
                                                : Icons.radio_button_unchecked,
                                            color: Color(0xFF840008),
                                          )),
                                      Text(
                                        'Office',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isOtherSelected =
                                                  !isOtherSelected;
                                            });
                                          },
                                          icon: Icon(
                                            isOtherSelected
                                                ? Icons.radio_button_checked
                                                : Icons.radio_button_unchecked,
                                            color: Color(0xFF840008),
                                          )),
                                      Text(
                                        'Other',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                    height: 50.0,
                    width: 270,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF840008),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                15.0), // Set your border radius here
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add Address",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ))),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
