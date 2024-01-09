Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('\₹ 419',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('GST',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      )),
                  Text('\₹21',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Partner Fee',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      )),
                  Text('\₹ 37',
                      style: TextStyle(
                        fontSize: 12,
                          color: Colors.black,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 1,
                color: const Color.fromARGB(255, 241, 240, 240),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Platform Fee',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      )),
                  Text('\₹ 3',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  Text('\₹ 480',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ],
              ),
        
            ],
          ),
        )