import 'package:flutter/material.dart';

class HomeScreenEigNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good evening,',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Text(
                'Jack',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: 25),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Post status widget
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.grey[100],
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
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20.0),
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey[300]),
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'Mon',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your habits',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Colors.blue[900],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) { 
                        return Container(
                        padding: EdgeInsets.only(top: 15,bottom: 20,left:15,right: 40 ),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.purple[900],
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black38),
                              child: Icon(Icons.menu_book_sharp,color: Colors.white,)),
                              SizedBox(height: 20,),
                    
                            Text(
                              'Reading',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),
                            ),
                              SizedBox(height: 10,),
                            Container(
                             
                              width: 80,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                 color: Colors.black,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Container(
                                  decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                              ),
                                  
                                width: 10,
                                height: 10,
                                ),
                              ),
                            ),
                              SizedBox(height: 10,),
                            Row(mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '156',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                SizedBox(width: 8,),
                                Text(
                                  'Sheets',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                    
                    
                          ],
                        ),
                      );
                       },
                      
                    ),
                  ),
                  SizedBox(
                height: 30,
              ),
              Text(
                "Today's Task",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                   return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 10),
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
                  child: Row(
                    children: [
                      Icon(Icons.check_box_sharp,color: Colors.purple[900],),
                      SizedBox(width: 5,),
                      Text(
                        "Buy food for dinner",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
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
