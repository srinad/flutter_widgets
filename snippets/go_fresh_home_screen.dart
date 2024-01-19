import 'package:flutter/material.dart';

class GoFreshHomeScreen extends StatefulWidget {
  const GoFreshHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<GoFreshHomeScreen> createState() => _GoFreshHomeScreenState();
}

List<Map<String, dynamic>> productName = [
  {
    'name': 'Food',
    'imagePath':
        'https://media.istockphoto.com/id/1316145932/photo/table-top-view-of-spicy-food.jpg?s=612x612&w=0&k=20&c=eaKRSIAoRGHMibSfahMyQS6iFADyVy1pnPdy1O5rZ98='
  },
  {
    'name': 'Veggies',
    'imagePath':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbiPnTGWfUAYECiR5ySKlrgyUrneZWaiJ_fkpHlI_YggGFgj57'
  },
  {
    'name': 'Meat',
    'imagePath':
        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTd14VaDbkML6B_nh08eRgdbzp0SaRLFssyEMs-eL7gKjJKj-2J'
  },
  {
    'name': 'Provisions',
    'imagePath':
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ8kvFhYVot4ZVn0oOZGuUioj_220V6KVyqkQ4xsM_LfjCE59ro'
  },
  {
    'name': 'Fruits',
    'imagePath':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHWbWMBWpe8QpL0YCeyoArF6FUqWLr3YOxa1MgXelEeFavBEZk'
  },
];

class _GoFreshHomeScreenState extends State<GoFreshHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 120.10, //set your height
          flexibleSpace: Container(
            color: Colors.white, // set your color
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: ShapeDecoration(
                              color: Color(0xFFF8F8F8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Icon(
                              Icons.location_on_sharp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Madhapur, Hyderabad..',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: ShapeDecoration(
                              color: Color(0xFFF8F8F8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: ShapeDecoration(
                              color: Color(0xFFF8F8F8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color.fromRGBO(236, 35, 108, 1),
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
                          children: [
                            Icon(
                              Icons.directions_bike_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Delivery',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color.fromRGBO(255, 243, 248, 1),
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
                          children: [
                            Icon(
                              Icons.directions_walk_sharp,
                              color: Color.fromRGBO(236, 35, 108, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Pickup',
                              style: TextStyle(
                                  color: Color.fromRGBO(236, 35, 108, 1),
                                  fontSize: 16),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.3), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 5, // Blur radius
                                  offset: Offset(
                                      0, 2), // Offset in the x, y direction
                                ),
                              ], shape: BoxShape.circle),
                              child: ClipOval(
                                // borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  productName[index]['imagePath'],
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              productName[index]['name'],
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  itemCount: 2,
                  // scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) { 
                    return Container(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
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
                        child: Column(
                          children: [
                            Stack(
                                clipBehavior: Clip.none,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://bsmedia.business-standard.com/_media/bs/img/article/2023-09/14/full/1694673859-4182.jpeg?im=FeatureCrop,size=(826,465)',
                                    )),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 0.8),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Text(
                                    'Super featured',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                 Positioned(
                                  left: 30,
                                  bottom: -5,
                                   child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.symmetric(horizontal: 4),
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  // border: Border.all(
                                                  //     color: Colors.pink, width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.circular(30)),
                                              child: ClipOval(
                                                  child: Image.network(
                                                'https://w7.pngwing.com/pngs/983/482/png-transparent-starbucks-coffee-logo-coffee-takeaway-leaf-logo-symmetry-thumbnail.png',
                                                fit: BoxFit.cover,
                                                width: 60, // Adjust the size as needed
                                                height: 60,
                                              )),
                                            ),
                                            Positioned(
                                              right: -65,
                                              bottom: -5,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.only(
                                                          topRight: Radius.circular(8),
                                                          bottomRight:
                                                              Radius.circular(8))),
                                                  child: Text(
                                                    'Open Now',
                                                    style: TextStyle(
                                                      color: Color(0xFFEB236B),
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  )),
                                            ),
                                           
                                          ],
                                        ),
                                 ),
                                  Positioned(
                                              right: 25,
                                              bottom: -10,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFEB236B),
                                                      borderRadius: BorderRadius.circular(20)
                                                      ),
                                                  child: Text(
                                                    '50% Off',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  )),
                                            )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Raj Palace Restaurant',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Color.fromRGBO(236, 35, 108, 1),
                                              size: 20),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            '(65k Reviews)',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'North Indian, chinese, sea foods',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.route,
                                            color: Color.fromRGBO(236, 35, 108, 1),
                                            size: 20,
                                          ),
                                          Text(
                                            '3.5 km',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 5),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: Text(
                                              '25-30 min',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[600],
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                    );
                   },
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
