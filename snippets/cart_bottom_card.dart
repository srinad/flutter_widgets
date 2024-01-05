import 'package:flutter/material.dart';


//bottomsheet
class BottomReciept extends StatelessWidget {
  const BottomReciept({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Icon(
        //   Icons.arrow_back_ios_new_rounded,
        //   color: Colors.black,
        // ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Bottome Reciept",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Color.fromARGB(255, 202, 202, 202),
                offset: Offset(2, 2),
              )
            ]
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Color(0XFFE23744),
                ),
                title: Text(
                  'Delivery at Home',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  'address',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Text(
                  'Change',
                  style: TextStyle(color: Color(0XFFE23744)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: const Color.fromARGB(255, 241, 241, 241),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          
                          children: [
                            Icon(Icons.payments,size: 16,color: Colors.blueGrey,),
                            SizedBox(width: 5,),
                            Text("PAY USING",style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),),
                            Icon(Icons.arrow_drop_up_rounded,size: 30,color: Colors.blueGrey,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("Cash on Delivery",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      width: MediaQuery.of(context).size.width*.6,
                      decoration: BoxDecoration(
                        color: Color(0XFFE23744),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("₹ 151.00",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),),
                              Text("TOTAL",style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Place Order",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),)
                            ],
                          )
                          
        
        
                        ],
                      ),
                    )
                  ],
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
