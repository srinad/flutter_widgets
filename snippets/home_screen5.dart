import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(325),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wearup',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  ClipOval(
                      child: Image.network(
                    'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                    fit: BoxFit.cover,
                    width: 30, // Adjust the size as needed
                    height: 30,
                  )),
                  SizedBox(width: 10),
                  Text(
                    'Hello, Nirmala',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Find cool products fit\nyour style',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 25),
              TextField(
                cursorColor: Colors.black,
                // controller: _textController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 18,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipOval(
                              child: Image.network(
                            'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                            fit: BoxFit.cover,
                            width: 45, // Adjust the size as needed
                            height: 45,
                          )),
                          Text('Hoodie',
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Products promo',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15)),
                  Text('See All',
                      style: TextStyle(
                        color: Colors.red,
                      )),
                ],
              ),
              SizedBox(height: 10),
              GridView.builder(
                // padding: EdgeInsets.only(left: 20, right: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: (index % 2) == 0
                                ? EdgeInsets.only(bottom: 15)
                                : EdgeInsets.only(top: 20),
                            child: Card(
                              shadowColor: Colors.grey[500],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(color: Colors.grey)],
                                  color: Colors.blueGrey[100],
                                  // (index % 2) == 0
                                  //     ? Colors.indigo[400]
                                  //     : Colors.green[400],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                            height: 29,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Icon(
                                              Icons.favorite_outline_rounded,
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEC23tcFLO1gnhYi_a-2aqhQZQgT9IjztE5g&usqp=CAU',
                                      scale: 1.8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(
                                  'Warmers Sweatshirts',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
