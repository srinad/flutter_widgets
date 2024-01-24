import 'package:flutter/material.dart';

class CategoryScreen2 extends StatefulWidget {
  const CategoryScreen2({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryScreen2> createState() => _CategoryScreen2State();
}

int _currentIndex = 0;
List<Map<String, dynamic>> productName = [
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS9d4oEp39Sj-zqjgOjXUGYoZi_oS06CwgtZh6ss8AxPGTXpjin',
    'name': 'Burger',
  },
  {
    'imagePath':
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNveyeJ5DUzlpBKewgMO53vmHrNEIDc7Q5Gg4OcgS3UKzz7tUb',
    'name': 'Drinks',
  },
  {
    'imagePath':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZi2xCFyHFNmuDqtkpYsFMsJnbRvLAVQoKCOdrr4PO3vUTISh1',
    'name': 'Pizza',
  },
  {
    'imagePath':
        'https://thumbs.dreamstime.com/b/pita-bread-chips-snacks-wooden-bowl-appetizer-concept-pita-bread-chips-snacks-wooden-bowl-99622308.jpg',
    'name': 'Snacks',
  },
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTe_4OdHRn5K7cjbPICDw_-GjljuN6IHDHZJUMIIXQX5_jqXNPk',
    'name': 'Indian',
  },
  {
    'imagePath':
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNveyeJ5DUzlpBKewgMO53vmHrNEIDc7Q5Gg4OcgS3UKzz7tUb',
    'name': 'Drinks',
  },
  {
    'imagePath':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZi2xCFyHFNmuDqtkpYsFMsJnbRvLAVQoKCOdrr4PO3vUTISh1',
    'name': 'Pizza',
  },
  {
    'imagePath':
        'https://thumbs.dreamstime.com/b/pita-bread-chips-snacks-wooden-bowl-appetizer-concept-pita-bread-chips-snacks-wooden-bowl-99622308.jpg',
    'name': 'Snacks',
  },
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTe_4OdHRn5K7cjbPICDw_-GjljuN6IHDHZJUMIIXQX5_jqXNPk',
    'name': 'Indian',
  },
  {
    'imagePath':
        'https://www.foodiesfeed.com/wp-content/uploads/2023/06/pouring-honey-on-pancakes.jpg',
    'name': 'Indian',
  },
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTe_4OdHRn5K7cjbPICDw_-GjljuN6IHDHZJUMIIXQX5_jqXNPk',
    'name': 'Indian',
  },
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS9d4oEp39Sj-zqjgOjXUGYoZi_oS06CwgtZh6ss8AxPGTXpjin',
    'name': 'Burger',
  },
  {
    'imagePath':
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTe_4OdHRn5K7cjbPICDw_-GjljuN6IHDHZJUMIIXQX5_jqXNPk',
    'name': 'Indian',
  },
  {
    'imagePath':
        'https://www.foodiesfeed.com/wp-content/uploads/2023/06/pouring-honey-on-pancakes.jpg',
    'name': 'Indian',
  },
  {
    'imagePath':
        'https://www.pictureframesexpress.co.uk/blog/wp-content/uploads/2017/09/shutterstock_382415053-e1505812638252.jpg',
    'name': 'Healthy',
  },
  {
    'imagePath':
        'https://www.southernliving.com/thmb/3x3cJaiOvQ8-3YxtMQX0vvh1hQw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2652401_QFSSL_SupremePizza_00072-d910a935ba7d448e8c7545a963ed7101.jpg',
    'name': 'Pizza',
  },
];

class _CategoryScreen2State extends State<CategoryScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFF7218E),
        leading: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.8999999761581421),
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
              Icons.navigate_before,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.8999999761581421),
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
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      // margin: EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                productName[index]['imagePath'],
                                height: 70,
                                width: 70,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            productName[index]['name'],
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
