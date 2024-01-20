import 'package:flutter/material.dart';

class PinkyFoodsBody extends StatefulWidget {
  @override
  State<PinkyFoodsBody> createState() => _PinkyFoodsBodyState();
}

class _PinkyFoodsBodyState extends State<PinkyFoodsBody> {
  List<String> rupees = ['₹20', '₹30', '₹50', 'Other'];
  List<String> names = ['Item Amt', 'Delivery Fee '];
  List<String> rupeeses = ['₹276', '₹10'];
  List<Map<String, dynamic>> imagetitle = [
    {'title': 'Item Discount', 'trailing': '-₹28'},
    {
      'title': 'Delivery Tip',
      'trailing': '₹30',
    },
    {
      'title': 'Taxes & Charges',
      'trailing': '₹12',
    }
  ];
  int counter = 0;
  void main() {
    int counter = 0;

    // Increment
    counter++;
    print('After increment: $counter'); // Output: After increment: 1

    // Decrement
    counter--;
    print('After decrement: $counter'); // Output: After decrement: 0
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFF9408E),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'cart',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
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
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Raj Palace Restaurant',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 18,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Chinese, North Indian',
                style: TextStyle(
                  color: Color(0xFF606060),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 300,
                      height: 1,
                      decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                  width: 50.0,
                  height: 50.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCvXMMnXz5Ftq9B1F6bNYFdr9j4R3HJxbhAQ&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Veg Sandwich', style: TextStyle(fontSize: 16)),
                subtitle: Row(
                  children: [
                    Text('₹120',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough)),
                    SizedBox(width: 10),
                    Text('₹98'),
                  ],
                ),
                trailing: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                      child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: 355,
                    height: 1,
                    decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  ),
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsLqN5lRbReaeZ2V1dAUIxlR0wgr4c5xcjfw&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title:
                        Text('Baked Deserts', style: TextStyle(fontSize: 16)),
                    subtitle: Row(
                      children: [
                        Text('₹100',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough)),
                        SizedBox(width: 10),
                        Text('₹80'),
                      ],
                    ),
                    trailing: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Center(
                          child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 355,
                    height: 1,
                    decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        width: 13,
                        height: 15,
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/128/5036/5036960.png',
                          scale: 10,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Write instructions for restaurant',
                        style: TextStyle(
                          color: Color(0xFF606060),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 1,
                    decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 343,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEBEBEB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 1,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Promo code',
                            style: TextStyle(
                              color: Color(0xFF606060),
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        DropdownButton(
                          onChanged: (value) {
                            // Handle the dropdown value change
                          },
                          items: [], // Empty list of items
                        ),
                        SizedBox(
                          width: 38,
                        ),
                        Container(
                          width: 90,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: Color(0xFF6C19F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tip your hunger saviour',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Thank your delivery partner by leaving them\n a tips.',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 15,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 50,
                            width: 350,
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: AlwaysScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 57,
                                          height: 30,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFC4C4C4)),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 3,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: Center(
                                              child: Text(rupees[index])),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 375,
                    height: 6,
                    decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 355,
                    height: 410,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bill Details',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 335,
                            height: 2,
                            decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                          ),
                          Container(
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      names[index],
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 16,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    trailing: Text(
                                      rupeeses[index],
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 16,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    subtitle: index ==
                                            1 // Show subtitle only for the second item (change the condition as needed)
                                        ? Text(
                                            'This fee compensates your Delivery Partner fairly',
                                            style: TextStyle(
                                              color: Color(0xFF606060),
                                              fontSize: 12,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          )
                                        : null, // Set subtitle to null for items other than the second one
                                  );
                                }),
                          ),
                          Container(
                            width: 335,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                          ),
                          Container(
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      imagetitle[index]['title'],
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 16,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    trailing: Text(
                                      imagetitle[index]['trailing'],
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 16,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            width: 335,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                          ),
                          ListTile(
                            title: Text(
                              'To Pay',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 18,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            trailing: Text(
                              '₹300',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 18,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 355,
                height: 120,
                decoration: ShapeDecoration(
                  color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: ListTile(
                  leading: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsGmTwYGLfs5OvrmwnRtueSqCuGn-vnMwAtg&usqp=CAU',
                    scale: 8,
                  ),
                  title: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver to Home',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Spline Arcade',
                          style: TextStyle(
                            color: Color(0xFF606060),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '1st Floor, Spline Arcade, Flat no 102,\n Plot no 1208, Ayyappa Society...',
                          style: TextStyle(
                            color: Color(0xFF606060),
                            fontSize: 11,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Change',
                        style: TextStyle(
                          color: Color(0xFFF9408E),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  title: Text(
                    'Your  Details',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    'Shravan Prajapati , 8006002211',
                    style: TextStyle(
                      color: Color(0xFF606060),
                      fontSize: 12,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Text(
                    'Change',
                    style: TextStyle(
                      color: Color(0xFFF9408E),
                      fontSize: 12,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 375,
                    height: 6,
                    decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            width: 13,
                            height: 15,
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaHYhA7MugMsLShhbmdAYzSXONBWqK1G-LZQ&usqp=CAU')),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cancellation Policy',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Order once placed it can’t be cancel.',
                              style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: 347,
                height: 56,
                decoration: ShapeDecoration(
                  color: Color(0xFF1A1A1A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                                'TOTAL',
                                style: TextStyle(
                                  color: Color(0xFFF9408E),
                                  fontSize: 10,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '₹300',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                             
                        ],
                      ),
                       Row(
                            children: [
                              Text(
                                        'Pay',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,color: Colors.red,)
                            ],
                          )
                    ],
                  ),
                )
              )
            ])),
      ),
    );
  }
}
