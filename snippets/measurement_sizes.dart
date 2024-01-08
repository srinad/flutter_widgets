SizedBox(
      width: MediaQuery.of(context).size.width * 0.53,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 211, 210, 210),
            blurRadius: 5,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'SIZE',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('50'),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('50'),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
            SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('More'),
                )
              ],
            )
          ],
        ),
      ),
    )