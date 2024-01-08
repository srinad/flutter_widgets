Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Messages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Filter',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.network(
                    'https://static-00.iconduck.com/assets.00/profile-circle-icon-1023x1024-ucnnjrj1.png',
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Johnna',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Hey there! Could...',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '10m ago',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.network(
                    'https://static-00.iconduck.com/assets.00/profile-circle-icon-1023x1024-ucnnjrj1.png',
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Johnna',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Hey there! Could...',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '1hr ago',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    )