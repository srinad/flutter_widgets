import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ZeptoHomeScreen extends StatefulWidget {
  const ZeptoHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ZeptoHomeScreen> createState() => _ZeptoHomeScreenState();
}

bool isExpanded = true;
int _currentIndex = 0;
List<Map<String, dynamic>> productName = [
  {
    'name':'Munchies',
    'imagePath': 'https://cdn.zeptonow.com/production///tr:w-250,ar-375-490,pr-true,f-webp,q-80/inventory/product/e83e6801-f417-462f-bb4c-099d1a39fafc-1T1VAeyOlrWNA3zDPEI20J4zcf9x2usDE.jpeg'
  },
  {
    'name':'Beverages',
     'imagePath': 'https://icon2.cleanpng.com/20180716/gzr/kisspng-sprite-fanta-fizzy-drinks-the-coca-cola-company-coca-cola-1-5-litter-5b4cf262390a32.1872581915317694422337.jpg'
  },
  {
    'name':'Fresh Meat',
     'imagePath': 'https://media.istockphoto.com/id/935316446/photo/fresh-raw-rib-eye-steaks-isolated-on-white.jpg?s=612x612&w=0&k=20&c=UBnLccI6y47Vynuxa2BybZS0jPUtEqpJvL4LzVgGSOg='
  },
  {
    'name':'Instant Foods',
     'imagePath': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsJIuXNBqgV6whCjEZTR-fQOjjsQgGehK7TA&usqp=CAU'
  },
  {
    'name':'Breakfast & Spreads',
     'imagePath': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUCWOiKoL87eZ676nlnXmyZE-xVw-HQnHE4A&usqp=CAU'
  },
  {
    'name':'Fresh Meat',
     'imagePath': 'https://media.istockphoto.com/id/935316446/photo/fresh-raw-rib-eye-steaks-isolated-on-white.jpg?s=612x612&w=0&k=20&c=UBnLccI6y47Vynuxa2BybZS0jPUtEqpJvL4LzVgGSOg='
  },
  {
    'name':'Instant Foods',
     'imagePath': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsJIuXNBqgV6whCjEZTR-fQOjjsQgGehK7TA&usqp=CAU'
  },
  {
    'name':'Breakfast & Spreads',
     'imagePath': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUCWOiKoL87eZ676nlnXmyZE-xVw-HQnHE4A&usqp=CAU'
  },
  {
    'name':'Fruits & Vegetables',
     'imagePath': 'https://t3.ftcdn.net/jpg/03/10/25/02/360_F_310250230_lQjVtUN7gFgNpOiX0XS9J4JFJlr6hjpI.jpg'
  },
  {
    'name':'Sweet Tooth',
     'imagePath': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThHoQ9QoDI30ogF8lat8AICFu1FQmsNvx4tABYM0qYVcUXYugD9N3nRZz7KSXr9f_m3dA&usqp=CAU'
  },
  {
    'name':'Cooking essentials',
     'imagePath': 'https://cdn.zeptonow.com/production///tr:w-250,ar-375-490,pr-true,f-webp,q-80/inventory/product/e83e6801-f417-462f-bb4c-099d1a39fafc-1T1VAeyOlrWNA3zDPEI20J4zcf9x2usDE.jpeg'
  },
  {
    'name':'Health and hygiene',
     'imagePath': 'https://cdn.zeptonow.com/production///tr:w-250,ar-375-490,pr-true,f-webp,q-80/inventory/product/e83e6801-f417-462f-bb4c-099d1a39fafc-1T1VAeyOlrWNA3zDPEI20J4zcf9x2usDE.jpeg'
  },
];

class _ZeptoHomeScreenState extends State<ZeptoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Icon(
            Icons.location_on_outlined,
            color: Colors.red,
          ),
        ),
        leadingWidth: 25,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            const Text(
              'Hills Road, Mirzapur',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.red,
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CarouselSlider.builder(
                itemBuilder: (context, index, realIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0Dt8uX6mcadLtM0GCui14i2InYyxKJVRubsXDyk9TO43C8rgB7ksnfIDQCpwAjp2Pi40&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: 3,
                options: CarouselOptions(
                  aspectRatio: 1.8,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Container(
                    width: 12,
                    height: 5,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                    decoration: BoxDecoration(
                      // shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: _currentIndex == index
                          ? Colors.purple[900]
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
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
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        // fontStyle: FontStyle.italic,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              productName[index]['name'],
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.purple[900],
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Image.network(
                              productName[index]['imagePath'],
                              scale: 7,
                            )
                          ],
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
