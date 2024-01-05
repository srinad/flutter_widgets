
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 246, 251, 255),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: 20,)),
        title: Text('Mehfil',style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),),
      ),
      body: CartScreenBody(),
    );
  }
}
    

//body
class CartScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 246, 251, 255)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DeliveryTime(),//delivery time
                SizedBox(height: 30,),
                HeaderText(title: 'ITEM(S) ADDED'),
                SizedBox(height: 20,),
                AddedItems(),
                //addmore
                AddMore(),
                SizedBox(height: 20,),
                HeaderText(title: 'SAVINGS CORNER'),
                SizedBox(height: 20,),


                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.discount,color: Colors.blue[100],size: 20,),
                    title: Text("Apply Coupon",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blueGrey,size: 20,),
                  ),
                ),
        
                SizedBox(height: 20,),
                HeaderText(title: 'BILL SUMMARY'),
                SizedBox(height: 20,),
                
                BillRecipt(),
                DonationCard(),
        
                SizedBox(height: 20,),
                HeaderText(title: 'CANCELLATION POLICY'),
                SizedBox(height: 20,),
                CancellationPolicy(),

                SizedBox(height: 200,),

          
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: BottomReciept(),
        ),
        
      ],
    );
  }
}



//more list
class AddMore extends StatelessWidget {
  const AddMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder:(context, index) {
          return ListTile(
            leading: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 196, 196, 196),),
            title: Text("Add more",style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blueGrey,size: 20,),
          );
        }, 
      ),
    );
  }
}


//bill summary
class BillRecipt extends StatefulWidget {
  const BillRecipt({super.key});

  @override
  State<BillRecipt> createState() => _BillReciptState();
}

class _BillReciptState extends State<BillRecipt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Text('\₹ 419',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('GST',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
              Text('\₹21',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Partner Fee',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
              Text('\₹ 37',
                  style: TextStyle(
                    fontSize: 12,
                      color: Colors.black,
                  )),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 1,
            color: const Color.fromARGB(255, 241, 240, 240),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Platform Fee',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
              Text('\₹ 3',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text('\₹ 480',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ],
          ),

        ],
      ),
    );
  }
}
  

//bottomsheet
class BottomReciept extends StatelessWidget {
  const BottomReciept({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}



//cancellation
class CancellationPolicy extends StatelessWidget {
  const CancellationPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
    child: Text(
      "100% cancellation fee will be applicable if you decide to cancel the order anytime after order placement",
      style: TextStyle(
        fontSize: 16,
        color: Colors.blueGrey,
      ),
    ),
  );
  }
}


//delivery time
class DeliveryTime extends StatefulWidget {
  const DeliveryTime({super.key});

  @override
  State<DeliveryTime> createState() => _DeliveryTimeState();
}

class _DeliveryTimeState extends State<DeliveryTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
      child: Row(
        children: [
          Icon(Icons.timer_outlined,size: 20,color: Colors.green[300],),
          SizedBox(width: 10,),
          Text("Delivery in  ",style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 16,
          ),),
          Text("25-30 min",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
        ],
      ),
    );
  }
}

//donation
class DonationCard extends StatelessWidget {
  const DonationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
  padding: EdgeInsets.symmetric(vertical: 10),
  child: Column(
    children: <Widget>[
      ListTile(
        title: Text('Feeding India donation'),
        subtitle: Text('Working towards a malnutrition free India'),
        trailing: Column(
          children: [
            Checkbox(
              value: true,
              activeColor: Colors.red, onChanged: (bool? value) {  },
            ),
          ],
        ),
      ),
      
    ],
  ),
)
;
  }
}


//header text
class HeaderText extends StatelessWidget {
  const HeaderText({super.key,required this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 14,
          letterSpacing: 2,
          fontWeight: FontWeight.w500,
        ),
      )
    );
  }
}


//addeditems
class AddedItems extends StatefulWidget {
  const AddedItems({super.key});

  @override
  State<AddedItems> createState() => _AddedItemsState();
}

class _AddedItemsState extends State<AddedItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
      child: Column(
        children: [
          //Added item
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return AddedItem();
            },
          )
        ],
      ),
    );
  }
}

//Added item
class AddedItem extends StatefulWidget {
  const AddedItem({super.key});

  @override
  State<AddedItem> createState() => _AddedItemState();
}

class _AddedItemState extends State<AddedItem> {

  int itemCount = 1;
  int itemPrice= 120;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
            ],
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1st column
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Special Chicken Biryani",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                          SizedBox(height: 3,),
                          Text("₹$itemPrice",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),),
                          SizedBox(height: 3,),
                          Text("Edit >",style: TextStyle(
                            color: Color(0XFFE23744),
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),),
                          
                        ],
                      ),
                    ),
                    //2nd column
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            padding: EdgeInsets.symmetric(horizontal: 0,vertical: 2),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 238, 240),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0XFFE23744)
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if(itemCount<2){
                                      return;
                                    }else{
                                      setState(() {
                                        itemCount--;
                                      });
                                    }
                                  },
                                  child: Icon(Icons.remove,size: 15,color: Color(0XFFE23744),)),
                                Text("$itemCount",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      itemCount++;
                                    });
                                  },
                                  child: Icon(Icons.add,size: 15,color: Color(0XFFE23744),)),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          //price text
                          Text("₹${itemPrice*itemCount}",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}



    