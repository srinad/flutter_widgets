import 'package:flutter/material.dart';

class HomeScreenEig extends StatelessWidget {
  HomeScreenEig({
    super.key,
    thisintText,
  });
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Specify the number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 78, 41),
          title: Text('WhatsApp'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Camera Content'),
            ),
            ChatList(),
            Center(
              child: Text('Status Content'),
            ),
            Center(
              child: Text('Calls Content'),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
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
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                            child: Image.network(
                          imageNames[index]['imagePath'],
                          fit: BoxFit.cover,
                          width: 50, // Adjust the size as needed
                          height: 50,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(imageNames[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                            SizedBox(
                              height: 3,
                            ),
                            Text("Hello there!",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("9:45",
                            style: TextStyle(
                                color: Colors.greenAccent[700],
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.greenAccent[700]),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )),
                      ],
                    ),
                  ],
                ),
                Divider()
              ],
            ),
          );
        },
      ),
    );
  }
}
