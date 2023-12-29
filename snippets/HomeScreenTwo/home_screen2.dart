import 'package:example_widgets/HomeScreenThree/home_screen3.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenTwo extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  HomeScreenTwo({
    super.key,
    thisintText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red[400],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.location_pin),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'New York city',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: [
            Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                ),
                child: Image.network(
                  'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjkzNy1hZXctMTM5LnBuZw.png',
                  height: 40,
                  width: 40,
                )),
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
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
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: 'What are you craving for?',
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 207, 216, 220),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Color(0XFFEAEFFF),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Color(0XFFF6FDFC),
                        width: 1,
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
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreenThree(),
                    ),
                  );
                },
                child: Image.network(
                    'https://readytomeat.in/cdn/shop/files/Web-Banners-_1600x600_9575aa22-a7bb-4f27-bfb4-92fa645f24a1.jpg?v=1679569581&width=1500'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Explore by Category',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.shutterstock.com/image-vector/floating-beef-steak-cartoon-illustration-260nw-2148754417.jpg',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Steak',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Order Again',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://godavaricuts.com/cdn/shop/files/Godavari-Cuts-Day-1-_12-of-65.jpg?v=1682400080',
                            scale: 12,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Chicken Drumstick',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Pieces 5-7',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ordered 2 days go',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Recommended',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://godavaricuts.com/cdn/shop/files/Godavari-Cuts-Day-1-_12-of-65.jpg?v=1682400080',
                          scale: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Chicken Drumstick',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Pieces 5-7',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ordered 2 days go',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      color: Colors.red[50],
                      child: Icon(
                        Icons.add,
                        color: Colors.red[400],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
