Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
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
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://telugu.samayam.com/thumb/95374577/few-indian-locations-that-resembles-other-foreign-countries-95374577.jpg?imgsize=90802&width=1200&height=900&resizemode=75',
                scale: 8,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Top 10 Places',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            Text(
              'You must visit',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    )