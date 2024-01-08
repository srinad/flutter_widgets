import 'package:flutter/material.dart';

//addeditems
class AddedItems extends StatefulWidget {
  const AddedItems({super.key});

  @override
  State<AddedItems> createState() => _AddedItemsState();
}

class _AddedItemsState extends State<AddedItems> {
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
          "Added Items",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
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
        ),
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
  int itemPrice = 120;

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
                width: MediaQuery.of(context).size.width * .8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1st column
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Chicken Biryani",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "₹$itemPrice",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Edit >",
                            style: TextStyle(
                              color: Color(0XFFE23744),
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 2),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 238, 240),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0XFFE23744))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: () {
                                      if (itemCount < 2) {
                                        return;
                                      } else {
                                        setState(() {
                                          itemCount--;
                                        });
                                      }
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: Color(0XFFE23744),
                                    )),
                                Text(
                                  "$itemCount",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        itemCount++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Color(0XFFE23744),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          //price text
                          Text(
                            "₹${itemPrice * itemCount}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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
