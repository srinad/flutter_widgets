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
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.red,
              ),
              child: Center(
                  child: Icon(
                Icons.warning_amber_rounded,
                color: Colors.white,
                size: 60,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'Warning!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'An error has occured while\ncreating an error report.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'CLOSE',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    )