import 'package:easy_stepper/easy_stepper.dart';
import 'package:example_widgets/BottomSheets/help_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StepperBottomSheet extends StatefulWidget {
  StepperBottomSheet({
    super.key,
    thisintText,
  });

  @override
  State<StepperBottomSheet> createState() => _StepperBottomSheetState();
}

class _StepperBottomSheetState extends State<StepperBottomSheet> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: GestureDetector(
              onTap: () {
                myAddressBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red[400],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'New York city',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: []),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}

void myAddressBottomSheet(BuildContext context) {
  int activeStep = 1;
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
    ),
    builder: (BuildContext context) {
      return Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Waiting for accept order',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Icon(Icons.edit_square),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              stepperCard(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pay with cash',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '₹250',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Avoid cash transactions',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                             Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HelpScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8),
                            decoration: BoxDecoration(
                                color: Color(0xFF1E90FF),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Pay online',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
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
                            'Your Delivery Partner',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Shravan',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          decoration: BoxDecoration(
                              color: Color(0xFFF3F5F7), shape: BoxShape.circle),
                          child: Icon(
                            Icons.message,
                            color: Colors.yellow[800],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          decoration: BoxDecoration(
                              color: Color(0xFFF3F5F7), shape: BoxShape.circle),
                          child: Icon(
                            Icons.call,
                            color: Colors.green,
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

class stepperCard extends StatefulWidget {
  const stepperCard({
    super.key,
  });

  @override
  State<stepperCard> createState() => _stepperCardState();
}

class _stepperCardState extends State<stepperCard> {
  int activeStep = 1;
  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStepBorderColor: Colors.white,
      activeStep: activeStep,
      lineLength: 70,
      lineSpace: 0,
      lineType: LineType.normal,
      defaultLineColor: Colors.white,
      finishedLineColor: Color(0xFFEB236B),
      activeStepTextColor: Colors.black87,
      finishedStepTextColor: Color(0xFFEB236B),
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 15,
      showStepBorder: false,
      lineDotRadius: 1.5,
      steps: [
        EasyStep(
          customTitle: Column(
            children: [
              Text(
                "confirmed",
                style: TextStyle(
                  fontSize: 11,
                  // color:getColorForText(0),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          customStep: Transform.scale(
              scale: 1.1,
              child: Image.network(
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSop0RtNu-jBEvNIxhoYUixeOgYDaEJr5lfx5yQGeeprgK1YGGU',
                fit: BoxFit.cover,
              )),
        ),
        EasyStep(
          customStep: Transform.scale(
              scale: 1.1,
              child: Image.network(
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSop0RtNu-jBEvNIxhoYUixeOgYDaEJr5lfx5yQGeeprgK1YGGU',
                fit: BoxFit.cover,
              )),
          customTitle: Column(
            children: [
              Text(
                "confirmed",
                style: TextStyle(
                  fontSize: 11,
                  // color:getColorForText(0),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        EasyStep(
          customStep: Transform.scale(
              scale: 1.1,
              child: Image.network(
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSop0RtNu-jBEvNIxhoYUixeOgYDaEJr5lfx5yQGeeprgK1YGGU',
                fit: BoxFit.cover,
              )),
          customTitle: Column(
            children: [
              Text(
                "confirmed",
                style: TextStyle(
                  fontSize: 11,
                  // color:getColorForText(0),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        EasyStep(
          customStep: Transform.scale(
              scale: 1.1,
              child: Image.network(
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSop0RtNu-jBEvNIxhoYUixeOgYDaEJr5lfx5yQGeeprgK1YGGU',
                fit: BoxFit.cover,
              )),
          customTitle: Column(
            children: [
              Text(
                "confirmed",
                style: TextStyle(
                  fontSize: 11,
                  // color:getColorForText(0),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ],
      onStepReached: (index) => setState(() => activeStep = index),
    );
  }
}
