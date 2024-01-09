Dialog(
      insetPadding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        // constraints: BoxConstraints(maxWidth: 400.0),
        margin: EdgeInsets.symmetric(horizontal: 0),
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        decoration: ShapeDecoration(
          color: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3119/3119338.png',
              scale: 8,
              color: Colors.black87,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'Get updates',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'Allow prisma to send you\nnotifications when new\nart styles added.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // height: 100,
              padding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Not now',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Allow',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )