import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatefulWidget {
  CartScreen({
    super.key,
    thisintText,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(236, 255, 252, 1),
          title: Text(
            'My Cart',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0,
          leading: Transform.scale(
            scale: 0.6,
            child: Container(
                width: 36,
                height: 36,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                      size: 30,
                    ))),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                        horizontal: 25), // Use sizer for padding
                    width: double.infinity,
                    height: 100, // Use sizer to make the height responsive
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              'https://cdn.pixabay.com/photo/2021/01/09/12/58/apple-5902283_1280.png',
                              height: 40,
                              width: 40,
                            ),
                            // Image.asset(
                            //   Images.APPLE,
                            //   height: 10.0.h, // Use sizer to make the height responsive
                            //   width: 10.0.w, // Use sizer to make the width responsive
                            // ),
                            SizedBox(
                              width: 25, // Use sizer for spacing
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Apple',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  // fontSize: 16.sp,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹ 99kg',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF26C0B8)),
                                    ),
                                    SizedBox(
                                      width: 5, // Use sizer for spacing
                                    ),
                                    Text(
                                      "₹ 100",
                                      style: TextStyle(
                                        color: Color(0xFFAAAAAA),
                                        fontSize:
                                            10, // Use sizer to make the font size responsive
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Container(
                                height: 40.0,
                                width: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFA575C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0), // Set your border radius here
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text("Add"))))
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Bill Details",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: ShapeDecoration(
                      color: Color(0xFF34C2C1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 6,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 175,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'You saved',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '₹',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              ' on this order !',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 185,
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Flex(
                          direction: Axis.vertical,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Item Total',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹ ',
                                      style: TextStyle(
                                        color: Color(0xFFFA575C),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      '196',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery Fee',
                                  style: TextStyle(
                                    color: Color(0xFF7C7C7C),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Free',
                                  style: TextStyle(
                                    color: Color(0xFF26C0B8),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Packing Charges',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹ ',
                                      style: TextStyle(
                                        color: Color(0xFFFA575C),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      '20.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Taxes and Charges',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹ ',
                                      style: TextStyle(
                                        color: Color(0xFFFA575C),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      '20.00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'To pay',
                                  style: TextStyle(
                                    color: Color(0xFF1F1F1F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹ ',
                                      style: TextStyle(
                                        color: Color(0xFFFA575C),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      '196',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // margin: EdgeInsets.symmetric(
                //   horizontal: 10,
                // ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery date',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/5637/5637246.png',
                            height: 30,
                            width: 30,
                            color: Color(0xFFFA575C),
                          ),
                          // Image.asset(
                          //   image,
                          //   color: tPrimaryColor,
                          //   scale: 4,
                          // ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Aug 11th",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                      // fontSize: 13.sp,
                                    ),
                                    Icon(
                                      Icons.edit_square,
                                      color: Color(0xFFFA575C),
                                    ),
                                    // Image.asset(
                                    //   Images.EDITICON,
                                    //   color: tPrimaryColor,
                                    //   scale: 5,
                                    // )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "08:00PM - 12:00AM",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFFA575C),
                                      ),
                                    ),
                                    Text(
                                      "Friday",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // width: 343,
                // height: 87,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'If any instruction ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7C7C7C),
                            ),
                          ),
                          Text(
                            '(optional)',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7C7C7C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // TextFieldContainer(hintText: "write here"),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Write here',
                          hintStyle: TextStyle(color: Color(0xFF7C7C7C)),
                          filled: true,
                          // Set the background color to grey
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none, // Remove the border
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 110,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.home,
                            color: Color(0xFFFA575C),
                          ),
                          // Image.asset(Images.HOME, color: tPrimaryColor, scale: 3),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      style: TextStyle(
                                        color: Color(0xFF1F1F1F),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                      'Home',
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        style: TextStyle(
                                          color: Color(0xFF7C7C7C),
                                          fontSize: 12,
                                        ),
                                        'Flat no 103, Block - A, Alekhya homes,Madhapur, \nHyderabad. 500081',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Checkbox(
                      value: isChecked,
                      activeColor: Color(0xFFFA575C),
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By accepting our ',
                            style: TextStyle(fontSize: 9),
                          ),
                          TextSpan(
                            text: 'terms and conditions',
                            style: TextStyle(
                                fontSize: 9,
                                color:
                                    Color(0xFFFA575C)), // Customize the color
                          ),
                          TextSpan(
                            text:
                                ' we are \nplacing this order. please check order details once.',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                      maxLines: 2, // Limit the text to two lines
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
