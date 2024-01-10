import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tcard/tcard.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({Key? key}) : super(key: key);

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4> {
  TCardController _controller = TCardController();

  late List<Widget> cards;
  List images = [
    'https://miro.medium.com/v2/resize:fit:785/0*Ggt-XwliwAO6QURi.jpg',
    'https://www.opticalexpress.co.uk/media/1064/man-with-glasses-smiling-looking-into-distance.jpg',
    'https://i.pinimg.com/564x/01/b3/86/01b386c45e2ba2d501e0ee943b33396a.jpg',
    'https://i.pinimg.com/736x/ea/53/fc/ea53fcb80faf447eace506e48d8d795d--business-portrait-headshot-ideas.jpg',
    'https://www.opticalexpress.co.uk/media/1064/man-with-glasses-smiling-looking-into-distance.jpg'
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the cards list in initState
    cards = List.generate(
      5,
      (index) => Container(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              images[index],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> imageNames = [
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9Xo1e96KXZxGA1bMxaMOPEJsyZYp2BFGLg&usqp=CAU',
      'name': 'Jessica',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU',
      'name': 'Micheal',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjl7xYqho8VFxvJSR9heh8UTerI6FW4KDbxA&usqp=CAU',
      'name': 'Bhavitha',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbfKhOuGk_Ag_8BBQ5Kc0xi1pAXxGNGP9JYQ&usqp=CAU',
      'name': 'Amulya',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSR-dez27VzWPTKhNi5kQf-aNDxuBo1LQ1-Q&usqp=CAU',
      'name': 'Dinesh',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  "Hyderabad",
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 248, 209, 223),
                  // borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Color.fromARGB(255, 201, 199, 199))
                ),
                child: Icon(
                  Icons.grid_view_rounded,
                  color: Colors.pink,
                )),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 248, 209, 223),
                      // borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Color.fromARGB(255, 201, 199, 199))
                    ),
                    child: Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.pink,
                    )))
          ],
          elevation: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageNames[index]['imagePath'],
                          scale: 3.5,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        imageNames[index]['name'],
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 0),

          // Use a FutureBuilder to handle the initialization of cards
          FutureBuilder(
            future: Future.delayed(Duration.zero),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Display a loading indicator while waiting for cards to initialize
                return CircularProgressIndicator(); // Replace with your desired loading widget
              } else {
                // Once cards are initialized, display TCard widget
                return TCard(
                  cards: cards,
                  controller: _controller,
                );
              }
            },
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  _controller.forward(direction: SwipDirection.Left);
                },
                child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 197, 195, 195),
                            blurRadius: 5,
                            offset: Offset(0, 2)),
                      ],
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.pink,
                    )),
              ),
              Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.pink,
                          blurRadius: 5,
                          offset: Offset(0, 2)),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [Color(0xFFFF7455), Color(0xFFFD2A7B)],
                    ),
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 35,
                    color: Colors.white,
                  )),
              // Image.network(
              //   'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS_DiivZzTyBe9HQGI5HBNMqlx-h_CqBoPeabSW60jdYS9YslBz',
              //   scale: 5,
              // ),
              InkWell(
                onTap: () {
                  _controller.forward(direction: SwipDirection.Right);
                },
                child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 197, 195, 195),
                            blurRadius: 5,
                            offset: Offset(0, 2)),
                      ],
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.star,
                      color: Colors.purple,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
