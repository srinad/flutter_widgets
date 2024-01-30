import 'package:flutter/material.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFFFBFBFB),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                  color: Color(0x2D000000),
                  blurRadius: 3,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Icon(
              Icons.navigate_before,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Refer and earn',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh3joh8dSMuh79b24Ym5s6lA4lDWNdktUCsFdO3s3IptlD3sZQ',
                      scale: 1.5,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Refer & Earn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEB236B),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total cashback (20)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1E90FF),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          ':  ₹150',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF1E90FF),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 14),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: ShapeDecoration(
                  color: Color(0x19EB236B),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEB236B)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x00000000),
                      blurRadius: 12,
                      offset: Offset(0, 6),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FOODYYY007',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.copy_rounded)
                  ],
                ),
              ),
              SizedBox(height: 36),
              Text(
                'Share link',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTxAxiPmFY6sGDnRMGSGD2eT_jP9N_u5BXmu4s3nYsQXNN2DWsd',
                    scale: 5,
                  ),
                  Image.network(
                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSynEHCiAc4bflM1dyaPjrxWB-EvXPFLN19Nn_kcTTz0qQsmUOD',
                    scale: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQsvg270YmQyeSlZogT0oSSf-g3ONAy9R9ipSiueJwYuk7KPnav',
                      scale: 5,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSZJ5eL-gF01MdDKI-5sZxqqORf5pGGor1jDRzobSsvaf-GOfGC',
                      scale: 5,
                    ),
                  ),
                  Image.network(
                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ9M2rVyoQ3xVy2v0VTNs_0OHCPrIl0cn_0JSVgBywdHJ4URgpd',
                    scale: 5,
                  ),
                ],
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 290,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Share your code with a friend. When they use it for their first Go fresh order, you both get ₹20 off on ₹250 order   ',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'see details',
                        style: TextStyle(
                          color: Color(0xFF1E90FF),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 26),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => NotificationScreen()),
                        // );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Refferal to shrvan',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Credit :  + ₹12',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF10A00E),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Ref Id :',
                                        style: TextStyle(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 8456646',
                                        style: TextStyle(
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '23 June 2022, 09:30 pm',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
