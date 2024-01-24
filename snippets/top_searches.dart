
import 'package:flutter/material.dart';

class TopSearches extends StatefulWidget {
  const TopSearches({super.key});

  @override
  State<TopSearches> createState() => _TopSearchesState();
}

class _TopSearchesState extends State<TopSearches> {
  List<Map<String, dynamic>> titleimages = [
    {
      'title': 'Stranger Things',
      'image':
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSAb9MHVmTjllFlXiZc9E8TKYmmvZVK1QXF0v1vJLRaVWjycggG',
    },
    {
      'title': 'Blood Shot',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQmWPFPoiwrTgm6wdpyFVXauLiz0_7jTrfXpIg02-NAU3b0HIH0',
    },
    {
      'title': 'Deadpool',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW9p4CbS8pAxWWaqfClQ5B6hawYDDpJLOeppQjtuAbkAF4XGF4',
    },
    {
      'title': 'Bloodshot',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSp3VJ18UfWVFvcUNkNuyYYt3L06i-SulVcDdL_9_QNGfaxKTAN',
    },
    {
      'title': 'Vikings',
      'image':
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQKJSHMVmRG8twCexKAnOY8sYNTq4DtGcuTHm54xb5CSNvl5uao',
    },
    {
      'title': 'Code 8',
      'image':
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSoJdhBV0bwi-ipD4TgnL3iALVfwt5gvUwYqwF8MIb47lMuf_8Q',
    },
    {
      'title': 'Money Heist 5',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQlAdg5W1VQ6h9XAMboTTyt0KBHUxyVseSamQbrQEViY3F0eX4c',
    },
    {
      'title': 'Fast and Furious 9',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS6K-uIjcORPA-t9ZLiYQz4JLpKgvyfGPKwk0zWawOE40LLOCMf',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Padding(
          padding: EdgeInsets.only(right: 15),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              hintText: 'Search for a show, movie, etc.',
              hintStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color(0xFF1E1E1E),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top Searches',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 12),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(titleimages[index]['image']),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(8),
                      //   child: Image.network(
                      //       titleimages[index]['image']),
                      // ),
                      SizedBox(height: 10),
                      Text(
                        titleimages[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
