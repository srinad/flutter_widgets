import 'package:flutter/material.dart';

class ProfilescreensBody extends StatefulWidget {
  @override
  State<ProfilescreensBody> createState() => _ProfilescreensBodyState();
}

class _ProfilescreensBodyState extends State<ProfilescreensBody> {
  final List<Map<String, dynamic>> iconsList = [
    {
      'icon': Icons.history_outlined,
      'text': 'My Orders',
    },
    {
      'icon': Icons.table_bar_outlined,
      'text': 'My Table',
    },
    {
      'icon': Icons.favorite_outline,
      'text': 'Favorite',
    },
    {
      'icon': Icons.location_on_outlined,
      'text': 'Address',
    },
    {
      'icon': Icons.shopping_cart_outlined,
      'text': 'Cart',
    },
    {
      'icon': Icons.logout_outlined,
      'text': 'LogOut',
    }
    // Add more items as needed
  ];
  List<String> names = ['Help & FAQS', 'Terms & Conditions', 'Privacy Policy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Acumin Pro',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(children: [
            Container(
              child: Row(
                children: [
                  Container(
                     padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.grey, // You can set the border color here
      width: 2.0, // You can set the border width here
    ),
  ),
  child: ClipOval(
    child: Image.network(
      'https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=600',
      width: 60.0,
      height: 60.0,
      fit: BoxFit.cover,
    ),
  ),
),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'SHRAVAN PRAJAPATI',
                                style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontSize: 14,
                                  fontFamily: 'Acumin Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(Icons.person,size: 30,)
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '+91 8328233273',
                                style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontSize: 12,
                                  fontFamily: 'Acumin Pro',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'shrvn850@gmail.com',
                            style: TextStyle(
                              color: Color(0xFF313131),
                              fontSize: 12,
                              fontFamily: 'Acumin Pro',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
              width: 335,
              height: 1,
              decoration: BoxDecoration(color: Color(0xFFAAAAAA)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            iconsList[index]['icon'],
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(iconsList[index]['text'])
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 305,
              height: 1,
              decoration: BoxDecoration(color: Color(0xFFAAAAAA)),
            ),
            SizedBox(height: 20,),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(names[index])
                      ],
                    ),
                  );
                })
          ])),
    );
  }
}
