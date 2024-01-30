import 'package:flutter/material.dart';
import 'package:gofreshclone/AlluPorota.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isToggled = false;
  List<Map<String, dynamic>> imagetitle = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgwOygM5uh-q8gcUhK1gr5lHgUD8Rja28b7Q&usqp=CAU',
      'title': 'Chicken Pizza',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLqWidDWJvVrdHdjh0fFjx5HAjWiXLh8-qHQ&usqp=CAU',
      'title': 'Veg Pizza',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw7kD9Iisroa3OqJsxAoRMo4jayq63XLjP2Q&usqp=CAU',
      'title': 'Paneer Pizza',
    },
  ];
  final List<String> subtaitle = [
    'Gol Conda Foods',
    'S S Resta Hub',
    'S S Resta Hub'
  ];
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        elevation: 1.0, // Set the elevation value as per your requirement
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                'Raj Palace Restaurant',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Container(
                  width: 343,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Container(
                    width: 8,
                    height: 8,
                    child: Stack(children: [
                      Positioned(
                        left: 120,
                        top: 10,
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: ShapeDecoration(
                            color: Color(0xFF0EB80E),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 118,
                        top: 8,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFF0EB80E)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAj212LKpyvk5hLtsYFMGv656qHpWh4HXiEQJoo_O8AiZoUSMfHnF_3yKDVA&s',
                                width: 60,
                                fit: BoxFit.cover,
                                height: 70,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  // Ensure the container has enough width

                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pizza',
                                        style: TextStyle(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹90',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFFEB236B),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                          Text(
                                            '500',
                                            style: TextStyle(
                                              color: Color(0xFF757575),
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'Regular',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Customize',
                                    style: TextStyle(
                                      color: Color(0xFF3399FC),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      DropdownButton(
                                        // Set an empty list for items
                                        items: [],
                                        onChanged: (value) {
                                          // Handle the dropdown selection change
                                        },
                                        // Optional hint text
                                      ),
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Center(
                                        child: Container(
                                          width: 80,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEB236B),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),

                                          // Adjust vertical padding
                                          // Other properties like child, margin, etc.

                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    // Decrement the counter
                                                    setState(() {
                                                      counter--;
                                                    });
                                                  },
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  '$counter',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(width: 10),
                                                InkWell(
                                                  onTap: () {
                                                    // Increment the counter
                                                    setState(() {
                                                      counter++;
                                                    });
                                                  },
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Container(
                  width: 343,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Container(
                    width: 8,
                    height: 8,
                    child: Stack(children: [
                      Positioned(
                        left: 175,
                        top: 10,
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF0000),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 173,
                        top: 8,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                color: Color(0xFFFF0000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgvnGZyHyTW4oyEocW3ow7c7h1dpj4Nd8TtVISaB9sT6Ft2lJaJCV1BAqcOw&s',
                                  fit: BoxFit.cover,
                                  width: 60,
                                  height: 70,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      'Mysore Bonda',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '₹90',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFFEB236B),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                            color: Color(0xFF757575),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Customize',
                                    style: TextStyle(
                                      color: Color(0xFF3399FC),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      DropdownButton(
                                        // Set an empty list for items
                                        items: [],
                                        onChanged: (value) {
                                          // Handle the dropdown selection change
                                        },
                                        // Optional hint text
                                      ),
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Center(
                                        child: Container(
                                          width: 80,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEB236B),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),

                                          // Adjust vertical padding
                                          // Other properties like child, margin, etc.

                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    // Increment the counter
                                                    setState(() {
                                                      counter++;
                                                    });
                                                  },
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  '$counter',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(width: 10),
                                                InkWell(
                                                  onTap: () {
                                                    // Decrement the counter
                                                    setState(() {
                                                      counter--;
                                                    });
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5,
                                                            vertical: 5),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 110,
                height: 24,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                    borderRadius: BorderRadius.circular(160),
                  ),
                ),
                child: Center(
                  child: Text(
                    '+ Add more items',
                    style: TextStyle(
                      color: Color(0xFFEB236B),
                      fontSize: 10,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Recommended',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Container(
              height: 200,
              width: 370,
              child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              width: 157,
                              height: 184,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Align the inner Column to start
                                children: [
                                  Container(
                                    width: 145,
                                    height: 90,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            imagetitle[index]['image']),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        imagetitle[index]['title'],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF1A1A1A),
                                        ),
                                      ),
                                      Text(
                                        subtaitle[index],
                                        style: TextStyle(
                                          color: Color(0xFF757575),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      // Add another Text widget here if needed
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Row(
                                children: [
                                  Text(
                                    '₹ 200',
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    '300',
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 19,
                                  ),
                                  Center(
                                    child: Container(
                                      width:
                                          60, // Increase the width to accommodate spacing
                                      height: 26,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEB236B),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceEvenly, // Adjust spacing here
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              // Increment the counter
                                              setState(() {
                                                counter++;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                    color: Colors.white),
                                              ),
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '$counter',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              // Decrement the counter
                                              setState(() {
                                                counter--;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                    color: Colors.white),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                child: Container(
                  height: 24,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '40%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'off',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )))
                          ]),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 343,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
              
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),border: Border.all(color: Colors.grey),
                      ),
                      child: Icon(
                        Icons.menu_outlined,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                  ),
                  Text(
                    'Include utensils, napkins, etc.',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 60,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.red)),
                      child: Icon(Icons.check,color: Colors.red,size: 20,),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 343,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: const Color.fromARGB(120, 158, 158, 158))),
                          child: Icon(Icons.add, color: Colors.pink)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add Instructions to store',
                          style: TextStyle(
                            color: Color(0xFFBCBCBC),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 343,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),border: Border.all(color: Colors.grey)
                      ),
                      child: Icon(
                        Icons.space_bar,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Row(
                      children: [
                        Text(
                          'Available coupons',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 343,
              height: 175,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '₹',
                                style: TextStyle(
                                  color: Color(0xFFEB236B),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '210',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 315,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFB9B9B9),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Charges',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              // Set an empty list for items
                              items: [],
                              onChanged: (value) {
                                // Handle the dropdown selection change
                                print('Selected value: $value');
                              },
                              // Optional hint text

                              icon: Icon(
                                Icons.arrow_drop_up_sharp,
                                color: Colors.red,
                                size: 25,
                              ), // Use an up arrow icon
                            ),
                          ),
                          SizedBox(
                            width: 189,
                          ),
                          Text(
                            '₹10.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Taxes and Fee',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              // Set an empty list for items
                              items: [],
                              onChanged: (value) {
                                // Handle the dropdown selection change
                                print('Selected value: $value');
                              },
                              // Optional hint text

                              icon: Icon(
                                Icons.arrow_drop_up_sharp,
                                color: Colors.red,
                                size: 25,
                              ), // Use an up arrow icon
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            '₹10.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 315,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFB9B9B9),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '₹',
                                  style: TextStyle(
                                    color: Color(0xFFEB236B),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: '240',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 355,
              height: 60,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1 Item',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Text(
                          '₹ 142',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 135,),
                     GestureDetector(
          onTap: () {
            // Navigate to the text page when the container is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AaluPratha()),
            );
          },

                      child: Container(
                        width: 151,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEB236B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child:  Padding(
                          padding:EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Text(
                                        'Check out',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 9,),
                                      Icon(
                                        Icons.arrow_forward,color: Colors.black,
                                        size: 30,
                                      )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
