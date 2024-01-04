import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenThree extends StatefulWidget {
  HomeScreenThree({
    super.key,
    thisintText,
  });

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;

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
          padding: const EdgeInsets.all(20.0),
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
              Text(
                'Explore',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://images.woodenstreet.de/image/cache/data%2Farm-chairs%2Fadrien-teak-wood-arm-chair-with-cane-black-finish%2Fupdated%2Fnew-one-1-750x650.jpg',
                                scale: 6,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              width: 150,
                              // color: Colors.pink,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Minimalist Chair',
                                    style: TextStyle(
                                        fontSize: 12,
                                        // color: Colors.blue[900],
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$250.0',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      // Spacer(),
                                      Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.black,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ))
                                    ],
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
              SizedBox(
                height: 20,
              ),
              Text(
                'Best Selling',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://images.woodenstreet.de/image/cache/data%2Farm-chairs%2Fadrien-teak-wood-arm-chair-with-cane-black-finish%2Fupdated%2Fnew-one-1-750x650.jpg',
                            scale: 10,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Minimalist Chair',
                              style: TextStyle(
                                  fontSize: 14,
                                  // color: Colors.blue[900],
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$250.0',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black,
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Cart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              ListView.builder(
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://ii1.pepperfry.com/media/catalog/product/c/h/494x544/charming-wing-chair-in-beige-colour-by-dreamzz-furniture-charming-wing-chair-in-beige-colour-by-drea-zchj05.jpg',
                                scale: 8,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Minimalist Chair',
                                  style: TextStyle(
                                      fontSize: 14,
                                      // color: Colors.blue[900],
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '\$250.0',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all()),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 14,
                                        // color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
