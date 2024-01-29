import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalenderScreen4 extends StatefulWidget {
  const CalenderScreen4({super.key});

  @override
  State<CalenderScreen4> createState() => _CalenderScreen4State();
}

class _CalenderScreen4State extends State<CalenderScreen4> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 90),
        Center(
            child: GestureDetector(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(pickedDate);
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate);
                    setState(() {
                      dateInput.text = formattedDate;
                    });
                  } else {}
                },
                child: Icon(Icons.calendar_month_outlined, size: 40))),
      ],
    ));
  }
}
