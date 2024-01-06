import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  const DonationCard({super.key});

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
          "Donation Card",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
        ),
      ),
    )
;
  }
}