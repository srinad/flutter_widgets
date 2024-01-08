Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 212, 211, 211),
            blurRadius: 5,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuzH7ZiKfRcqONyjtZuYLIDk0ClheHVIP5RA&usqp=CAU',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Your video has been uploaded',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Your video has finished uploading and is live',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Text(
                'Share link',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 39,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'dshfv.com/videos/promo',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w300,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromARGB(255, 224, 222, 222))),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromARGB(255, 224, 222, 222))),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 224, 222, 222)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.copy, size: 20),
                    SizedBox(width: 10),
                    Text('Copy link'),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Color.fromARGB(255, 224, 222, 222)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    )