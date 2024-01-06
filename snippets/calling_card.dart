import 'package:flutter/material.dart';
class CallComponent extends StatelessWidget {
  const CallComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Incoming call',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(
            'https://static-00.iconduck.com/assets.00/profile-circle-icon-1023x1024-ucnnjrj1.png',
            height: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Mark Thomas',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.blue[900]),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Work',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadiusDirectional.circular(28)),
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_end,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadiusDirectional.circular(28)),
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}