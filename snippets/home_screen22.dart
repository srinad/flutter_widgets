import 'package:flutter/material.dart';

class HomeScreen8 extends StatefulWidget {
  const HomeScreen8({super.key});

  @override
  State<HomeScreen8> createState() => _HomeScreen8State();
}

class _HomeScreen8State extends State<HomeScreen8> {
  List<Map<String, dynamic>> container1 = [
    {
      'imagePath':
          'https://bsmedia.business-standard.com/_media/bs/img/article/2023-09/14/full/1694673859-4182.jpeg?im=FeatureCrop,size=(826,465)',
      'name': 'Burger',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGXht32k4euw3Py1IHpLqSGBsF_1jU9jBK6DoTK1lwCc5nmJLdxFvokwd04P2q8FzGg08&usqp=CAU',
      'name': 'Drinks',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXnvk1_Y03dxX4bRoBFsw7Lc6dwYG7w6CthA&usqp=CAU',
      'name': 'Pizza',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJnkrxyJmjx6DPn8W0AxEtHKEuEfa1otMRiw&usqp=CAU',
      'name': 'Indian',
    },
  ];
  List<Map<String, dynamic>> container2 = [
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmPXzzfy_1cAuFD_KMRP7YlJhPHnnda8cj-Q&usqp=CAU',
      'name': 'Burger',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP4PAXgX2sx3wvJ6OBl_Ly2rhBnfEpDHLtiA&usqp=CAU',
      'name': 'Pizza',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD-tfKF5ojKEz2XULiYc0xYb5e3qOGdS0yyA&usqp=CAU',
      'name': 'Fries',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCTPeiE08LUWfCf3NnkaZYyPwT4wh6GkzCNQ&usqp=CAU',
      'name': 'Ice-cream',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 15),
                            hintText: 'Search your food here...',
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF1E1E1E),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Hello Ali',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                'What do you want?',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                height: 115,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFF1E1E1E),
                            borderRadius: BorderRadius.circular(35)),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        container2[index]['imagePath'],
                                      ),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(height: 8),
                            Text(
                              container2[index]['name'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => HomeScreen9()),
                              // );
                            },
                            child: Container(
                              height: 250,
                              width: 500,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      container1[index]['imagePath']),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 18),
                              decoration: BoxDecoration(
                                  color: Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'HamBurger',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '4.9',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 5),
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.red, size: 17),
                                              Icon(Icons.star,
                                                  color: Colors.red, size: 17),
                                              Icon(Icons.star,
                                                  color: Colors.red, size: 17),
                                              Icon(Icons.star,
                                                  color: Colors.red, size: 17),
                                              Icon(Icons.star,
                                                  color: Colors.red, size: 17),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.access_time,
                                              color: Colors.red, size: 20),
                                          SizedBox(width: 5),
                                          Text(
                                            '10:00-23:00',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Min - \$35',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 5),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
