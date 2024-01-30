import 'package:flutter/material.dart';

class HomeScreen9 extends StatefulWidget {
  const HomeScreen9({super.key});

  @override
  State<HomeScreen9> createState() => _HomeScreen9State();
}

class _HomeScreen9State extends State<HomeScreen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.0,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                    hintText: 'Where to?\nAnywhere, Anyweek, Add guests',
                    hintMaxLines: 2,
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              SizedBox(height: 10),
              TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                dividerColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.travel_explore, color: Colors.black),
                        SizedBox(height: 2),
                        Text(
                          'OMG!',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    // text: 'Beach',
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.beach_access_rounded, color: Colors.black),
                        SizedBox(height: 2),
                        Text(
                          'Beach',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    // text: 'Beach',
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.pool, color: Colors.black),
                        SizedBox(height: 2),
                        Text(
                          'Amazing pools',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    // text: 'Beach',
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.emoji_nature_rounded, color: Colors.black),
                        SizedBox(height: 2),
                        Text(
                          'Islands',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    // text: 'Beach',
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.beach_access_rounded, color: Colors.black),
                        SizedBox(height: 2),
                        Text(
                          'Beach',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    // text: 'Beach',
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: TabBarView(
                  children: [
                    Tab1(),
                    Center(child: Text('tab2')),
                    Center(child: Text('tab3')),
                    Center(child: Text('tab4')),
                    Center(child: Text('tab5')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          //           Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => RestaurantDetails()),
                          // );
                        },
                        child: Container(
                          height: 290,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBXe_NZ3ngyv6whShn9b-suW-V11l2GoUbDA&usqp=CAU'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Icon(
                          Icons.more_horiz_sharp,
                          color: const Color.fromARGB(255, 216, 214, 214),
                          size: 45,
                        ))
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Abiansemal, Indonesia',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.black, size: 18),
                        SizedBox(width: 4),
                        Text(
                          '4.87',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  '1,699 kilometers',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(height: 5),
                Text(
                  'Jul 2 - 7',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(height: 7),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$360 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'night',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
