import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenFive extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  HomeScreenFive({
    super.key,
    thisintText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange[900],
              ),
              child: Text(
                'e',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: [
            Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                ),
                child: Icon(
                  Icons.filter_list,
                  color: Colors.black,
                )),
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.red),
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          child: Image.network(
                            'https://i.pinimg.com/736x/2b/a2/45/2ba2455ca817f7659e9ebfe9d494c5db.jpg',
                            scale: 12,
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular This Week',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 290,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(15),
                            child: Image.network(
                              'https://img.freepik.com/premium-photo/3d-gradient-beach-background-illustration-generative-ai_549702-604.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(20),
                                            child: Image.network(
                                              'https://i.pinimg.com/736x/2b/a2/45/2ba2455ca817f7659e9ebfe9d494c5db.jpg',
                                              scale: 15,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lana Marandina',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              '@lanamar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.orange[800],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        '82min',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.cyan[900],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'Learn How to Create\nBeautiful scenes in illustrator',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Upcoming Course',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadiusDirectional.circular(30),
                          ),
                          child: Image.network(
                            'https://img.freepik.com/free-vector/businessmen-work-with-laptops-graph-columns-business-hierarchy-hierarchical-organization-levels-hierarchy-concept-white-background_335657-2031.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1704585600&semt=ais',
                            scale: 8,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How to increase your\nleadership skills',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Angiline',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        )
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
