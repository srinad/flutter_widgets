import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<Map<String, dynamic>> imageNames = [
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4BRZjFykarhFKKOUB3LeUsxR-E-ksHQJeg&usqp=CAU',
      'name': 'PhonePay',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4BRZjFykarhFKKOUB3LeUsxR-E-ksHQJeg&usqp=CAU',
      'name': 'GooglePay',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4BRZjFykarhFKKOUB3LeUsxR-E-ksHQJeg&usqp=CAU',
      'name': 'Paytm',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 212, 211, 211),
                        blurRadius: 5,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'PAYMENT METHODS',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 214, 212, 212)),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ClipRect(
                                      child: Image.network(
                                        imageNames[index]['imagePath'],
                                        height: 40,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      imageNames[index]['name'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.navigate_next,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              

            ],
          ),
        ),
      );
  }
}