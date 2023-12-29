import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenThree extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  HomeScreenThree({
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
            child: Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
            ),
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
                      height: 1),
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 207, 216, 220),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFFEAEFFF),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
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
              Container(
                height: 220,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return 
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      // color: Colors.amber[100],
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        shadows: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://images.woodenstreet.de/image/cache/data%2Farm-chairs%2Fadrien-teak-wood-arm-chair-with-cane-black-finish%2Fupdated%2Fnew-one-1-750x650.jpg',
                                  scale: 6,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Minimalist Chair',
                                style: TextStyle(
                                    fontSize: 12,
                                    // color: Colors.blue[900],
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  // Spacer(),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
