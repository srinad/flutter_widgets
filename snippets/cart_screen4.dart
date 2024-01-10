import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> namesbill = [
    {
      'names': 'Item Total',
      'bill': '₹17',
    },
    {
      'names': 'Small Card Fee',
      'bill': '₹20',
    },
    {
      'names': 'Handling Charge',
      'bill': '₹30',
    },
    {
      'names': 'Delivery Fee',
      'bill': '₹47',
    },
    {
      'names': 'Add products worth ₹82 to get Free delivery',
      'bill': '₹20',
    },
    {
      'names': 'Total Bill',
      'bill': '₹30',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // elevation: 1,
        backgroundColor: Colors.white,
        leading: Icon(Icons.navigate_before),
        title: Center(
            child: Text(
          'Cart',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 147, 6, 172),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                // Code to execute when button is pressed.
              },
              child: Text(
                'Add More',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'View Coupons & Offers',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
                // borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Row(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2CTVKXA2MjMm6SSa_pOE0YTPTRAcTWSznsg&usqp=CAU",
                    scale: 4,
                    // height: 30,
                    // width: 40,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saffola Masala Oats',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14)),
                      Text('Classic Masala',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey)),
                      Text('38g',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17)),
                    ],
                  ),
                  Spacer(),
                  Text('₹17'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Unlock new offer',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 226, 224, 224),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjh0srwFQP_bYaMUKKcnAODl3grEXFPpHp6g&usqp=CAU',
                              scale: 4,
                            ),
                            // Icon(
                            //   Icons.shopping_cart,
                            //   color: Colors.black,
                            // ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tender Coconut \n(Nariyal)/Kobbari..',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '₹48',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2CTVKXA2MjMm6SSa_pOE0YTPTRAcTWSznsg&usqp=CAU",
                              scale: 5,
                              // height: 30,
                              // width: 40,
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Saffola Masala Oats',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                                Text('Classic Masala',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.grey)),
                                Text('38g',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17)),
                              ],
                            ),
                            Spacer(),
                            Text('₹17'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You Might Have Missed',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Container(
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ]),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Image.network(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN89dS6ssEX3XqeSvJrMebat5sP1wxuQm-rQ&usqp=CAU",
                                            scale: 3,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Heritage Toned\nFresh Milk(Pouch)',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          // SizedBox(height: 10),
                                          Text(
                                            '500 ml',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ButtonBar(
                                    alignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 216, 134, 160)),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            'Add',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 216, 134, 160)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // MissedProducts(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Delivery Partner Tip',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                      'The entire amount will be sent to your delivery partner.',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.grey)),
                  Container(
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 3),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 212, 206, 206)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVDPAWwrRc7MYG80ae4I5gWvQLsxvFCp8xhA&usqp=CAU',
                                  scale: 17,
                                ),
                                // Icon(Icons.mood_outlined,size: 13,),
                                SizedBox(width: 2),
                                Text('Custom'),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            // DeliveryPartnerTip(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (index != 4) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(namesbill[index]['names']),
                                  Text(namesbill[index]['bill']),
                                ],
                              ),
                            ),
                            // Divider(),
                          ],
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                namesbill[index]['names'],
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                  Divider(color: Color.fromARGB(255, 243, 231, 231)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash',
                        style: TextStyle(color: Colors.green),
                      ),
                      Text('₹17 '),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'To Pay',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      Text('₹250',style: TextStyle(fontWeight: FontWeight.w600),),
                    ],
                  ),
                ],
              ),
            ),
            // TotalBill(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          color: const Color.fromARGB(255, 102, 119, 219)),
                      SizedBox(width: 6),
                      Text("Address"),
                      Spacer(),
                      Icon(
                        Icons.assistant_direction,
                        color: const Color.fromARGB(255, 102, 119, 219),
                        size: 40,
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Tox Tower, Down Hill Society, Kukatpally, Hyderabad, Telangana (500081)',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
