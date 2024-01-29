import 'package:flutter/material.dart';


class AddAdressBody extends StatefulWidget {
  @override
  State<AddAdressBody> createState() => _AddAdressBodyState();
}

class _AddAdressBodyState extends State<AddAdressBody> {
  List<String> locationnames = ['Home', 'Work', 'Hotel', 'Other'];
  final TextEditingController _textController = TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Address',
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 14,
            fontFamily: 'Acumin Pro',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: 30,
            height: 30,
            child: Container(
              width: 30,
              height: 30,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            Container(
              width: 345,
              height: 120,
              decoration: ShapeDecoration(
                color: Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 3,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w600,
                            height: 0.06,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      '1st Floor, Spline Arcade, Flat no 102, Plot no 1208, Ayyappa Society, Hyderabad (500081)',
                      style: TextStyle(
                        color: Color(0xFF606060),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Color(0xFFF9408E),
                              fontSize: 10,
                              fontFamily: 'Acumin Pro',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Delete',
                          style: TextStyle(
                            color: Color(0xFFF9408E),
                            fontSize: 10,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 345,
                height: 100,
                decoration: ShapeDecoration(
                  color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 3,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Office',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w600,
                            height: 0.06,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      '1st Floor, Spline Arcade, Flat no 102, Plot no 1208, Ayyappa Society, Hyderabad (500081)',
                      style: TextStyle(
                        color: Color(0xFF606060),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ])),
            SizedBox(
              height: 350,
            ),
            Container(
              width: 335,
              height: 60,
              decoration: ShapeDecoration(
                color: Color(0xFF1A1A1A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Container(
                  
                  child: GestureDetector(
                    onTap: () {
                      // Show the modal bottom sheet
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return  Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 80,
                          height: 4,
                          decoration: BoxDecoration(color: Color(0xFF1A1A1A)),
                        ),
                      ),
                      SizedBox(height: 10), // Add some spacing
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Text(
                          'Confirm Delivery Location',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      // Add other content here

                      Container(
                        width: 345,
                        height: 1,
                        decoration: BoxDecoration(color: Color(0xFFD0D0D0)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtTHuk_nRrr12LeTKVnz66uVBS-lPcB2eQjw&usqp=CAU',
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ayyappa Society',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 14,
                                  fontFamily: 'Acumin Pro',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                'Change',
                                style: TextStyle(
                                  color: Color(0xFFF9408E),
                                  fontSize: 10,
                                  fontFamily: 'Acumin Pro',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 28),
                        child: Text(
                          'Ayyappa Society, Madhapur, Hyderabad',
                          style: TextStyle(
                            color: Color(0xFF606060),
                            fontSize: 12,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w500,
                            height: 0.12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 335,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Color(0xFF6C19F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Center(
                          child:GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27),
                        ),
                      ),
                  child: Container(
      height: 540,
        child: Column(
          children: <Widget>[
            Container(
              width: 80,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF1A1A1A)),
            ),
      
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Text(
                  'Enter address details',
                  style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 16,
                    fontFamily: 'Acumin Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            // Add other content here
      
            Container(
              width: 375,
              height: 1,
              decoration: BoxDecoration(color: Color(0xFFD0D0D0)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Text(
                  'Your Location',
                  style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 12,
                    fontFamily: 'Acumin Pro',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtTHuk_nRrr12LeTKVnz66uVBS-lPcB2eQjw&usqp=CAU',
                      fit: BoxFit.fill,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ayyappa Society',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        'Change',
                        style: TextStyle(
                          color: Color(0xFFF9408E),
                          fontSize: 10,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Complete Address',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                    TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: 'Spline Arcade, Flat no 102, Plot no',
                        hintStyle: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
      
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Floor',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                   
                   TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText:  '1st Floor, Flat no 102',
                        hintStyle: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
          SizedBox(height: 17,),
         
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      'Tag Loacation',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                  height: 60,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 56,
                                height: 21,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.60, color: Color(0xFFF9408E)),
                                    borderRadius: BorderRadius.circular(23),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    locationnames[index],
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 10,
                                      fontFamily: 'Acumin Pro',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      })),
            ),
            SizedBox(height: 27,),
            Container(
              width: 335,
              height: 60,
              decoration: ShapeDecoration(
                color: Color(0xFF6C19F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Center(
                child: Text(
                  'Save Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Acumin Pro',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  
              },
            );
          },
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Acumin Pro',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ),

                      )
                    ])));
                        },
                      );
                    },
                    child: Text(
                      'Add New Address',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
