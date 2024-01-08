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
            SizedBox(
              height: 30,
            ),
            Image.network(
              'https://clipart-library.com/images/Lcd5doyqi.png',
              scale: 4,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Congratulations! 👍',
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
              'The amount has been successfully added to your wallet',
              style: TextStyle(
                fontSize: 15,
                color: Color(0XFF757575),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    )