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
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        decoration: ShapeDecoration(
          color: Colors.white,
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
            // SizedBox(
            //   height: 30,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ],
            ),
            Image.network(
              'https://www.pinclipart.com/picdir/big/155-1559653_delete-trash-icon-icon-clipart.png',
              scale: 10,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              'Are you sure you want to delete your files?',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF840008),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'You will not be recovered them\nafterwards',
              style: TextStyle(
                fontSize: 10,
                color: Color(0XFF757575),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 66, 7, 167),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Yes, delete',
                style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 66, 7, 167),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cancel',
              style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 66, 7, 167),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    )