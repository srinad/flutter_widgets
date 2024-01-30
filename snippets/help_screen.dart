import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  List<Map<String, dynamic>> productName = [
    {
      'name': 'Munchies',
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiz2ftZEKKcIRPFJunnBmVMcz0Ao7pGnDUWltmtt21N8r9qhef',
      'icon': Icons.mail_rounded,
    },
    {
      'name': 'Beverages',
      'imagePath':
          'https://icon2.cleanpng.com/20180716/gzr/kisspng-sprite-fanta-fizzy-drinks-the-coca-cola-company-coca-cola-1-5-litter-5b4cf262390a32.1872581915317694422337.jpg',
      'icon': Icons.mail_rounded,
    },
    {
      'name': 'Fresh Meat',
      'imagePath':
          'https://media.istockphoto.com/id/935316446/photo/fresh-raw-rib-eye-steaks-isolated-on-white.jpg?s=612x612&w=0&k=20&c=UBnLccI6y47Vynuxa2BybZS0jPUtEqpJvL4LzVgGSOg=',
          'icon': Icons.wechat_rounded,
    },
    {
      'name': 'Instant Foods',
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsJIuXNBqgV6whCjEZTR-fQOjjsQgGehK7TA&usqp=CAU',
          'icon': Icons.mail_rounded,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.8999999761581421),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                  color: Color(0x2D000000),
                  blurRadius: 3,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Icon(
              Icons.navigate_before,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Help',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.network(
                'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTOtFlHZ_sVjNuJkQUWu2UcxQ88r-9Ywd5CEnjaO_RVbCpIJF5J',
                scale: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x2D000000),
                      blurRadius: 3,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTc6tQdGit0wXSx8oVRyeCp_gINQ8ES2W5QWD0MrKKB0FcsGkqX',
                          scale: 5.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'FAQ’s',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        // childAspectRatio: 1.5,
                        mainAxisSpacing: 30.0,
                        crossAxisSpacing: 50.0),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x2D000000),
                              blurRadius: 3,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(1.00, -0.05),
                                      end: Alignment(-1, 0.05),
                                      colors: [
                                        Color.fromRGBO(255, 178, 178, 1),
                                        Color.fromRGBO(236, 64, 64, 1)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  productName[index]['icon'],
                                  size: 40,
                                  color: Colors.white54,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Email us',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
