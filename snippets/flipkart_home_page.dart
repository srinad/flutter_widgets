import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlipcartDemoPage extends StatefulWidget {
  const FlipcartDemoPage({super.key});

  @override
  State<FlipcartDemoPage> createState() => _FlipcartDemoPageState();
}

class _FlipcartDemoPageState extends State<FlipcartDemoPage> {
  @override
  Widget build(BuildContext context) {
    return FlipkartMainPage();
  }
}

class FlipkartMainPage extends StatelessWidget {
  final List<String> bannerImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjJWT9VwA6Uli4gDaQay7ve2FcDy4-6tdSTep7stig8Aw6FRtNtzbiDJORhjfe8bYyEw8&usqp=CAU',
    'https://storiesflistgv2.blob.core.windows.net/stories/2017/08/Perfectbuy_banner.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbPp15IzWqSMZIupQYbfjIiRtldHUQamfsCW3G-18j4A&s',
  ];

  final List<Map<String, String>> categories = [
    {
      'name': 'Offers',
      'image':
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'
    },
    {
      'name': 'Electronics',
      'image':
          'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'
    },
    {
      'name': 'Fashion',
      'image':
          'https://images.unsplash.com/photo-1560343090-f0409e92791a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'
    },
    {
      'name': 'Home',
      'image':
          'https://images.unsplash.com/photo-1503602642458-232111445657?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'
    },
    {
      'name': 'More',
      'image':
          'https://images.unsplash.com/photo-1583947215259-38e31be8751f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D'
    },
  ];

  final List<Map<String, dynamic>> featuredProducts = [
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ37uj76-A8rzcFIScDNL8PigRCCxkqBPMkGttpch6PAlt8KoEj_cZ_I1QJ9Mmn7a0w4zE&usqp=CAU',
      'name': 'Product 1',
      'price': '\$199.99',
      'rating': 4.5
    },
    {
      'image':
          'https://images.unsplash.com/photo-1511556820780-d912e42b4980?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Product 2',
      'price': '\$299.99',
      'rating': 4.0
    },
    {
      'image':
          'https://images.unsplash.com/photo-1491553895911-0055eca6402d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Product 3',
      'price': '\$99.99',
      'rating': 3.5
    },
    {
      'image':
          'https://images.unsplash.com/photo-1560769629-975ec94e6a86?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Product 4',
      'price': '\$149.99',
      'rating': 4.2
    },
    {
      'image':
          'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Product 5',
      'price': '\$249.99',
      'rating': 4.8
    },
    {
      'image':
          'https://images.unsplash.com/photo-1605348532760-6753d2c43329?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Product 6',
      'price': '\$199.99',
      'rating': 4.1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text('logo', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Container(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Products, Brands and More',
                  hintStyle: TextStyle(fontSize: 14.0),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                ),
                items: bannerImages.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: categories.map((category) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(category['image']!),
                      ),
                      SizedBox(height: 5),
                      Text(category['name']!, style: TextStyle(fontSize: 12)),
                    ],
                  );
                }).toList(),
              ),
            ),
            Container(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deals of the Day',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '19h 41m remaining',
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(),
                    child: Text('View All', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: featuredProducts.length,
                itemBuilder: (context, index) {
                  final product = featuredProducts[index];
                  return Card(
                    elevation: 2.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          child: Image.network(
                            product['image'],
                            fit: BoxFit.cover,
                            height: 120,
                            width: double.infinity,
                          ),
                        )),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            product['name'],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            product['price'],
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          child: RatingBar.builder(
                            initialRating: product['rating'],
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
