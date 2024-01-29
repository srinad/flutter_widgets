import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen2 extends StatefulWidget {
  CalenderScreen2({Key? key}) : super(key: key);

  @override
  State<CalenderScreen2> createState() => _CalenderScreen2State();
}

class _CalenderScreen2State extends State<CalenderScreen2> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  void _onPressedBackward() {
    setState(() {
      if (_focusedDay.month == DateTime.january) {
        _focusedDay = DateTime.utc(
          _focusedDay.year - 1,
          DateTime.december,
          _focusedDay.day,
        );
      } else {
        _focusedDay = DateTime.utc(
          _focusedDay.year,
          _focusedDay.month - 1,
          _focusedDay.day,
        );
      }
    });
  }

  void _onPressedForward() {
    setState(() {
      if (_focusedDay.month == DateTime.december) {
        _focusedDay = DateTime.utc(
          _focusedDay.year + 1,
          DateTime.january,
          _focusedDay.day,
        );
      } else {
        _focusedDay = DateTime.utc(
          _focusedDay.year,
          _focusedDay.month + 1,
          _focusedDay.day,
        );
      }
    });
  }

  bool _isBackwardDisabled() {
    DateTime currentDate = DateTime.now();
    return currentDate.month == _focusedDay.month &&
        currentDate.year == _focusedDay.year;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         
          children: [
            SizedBox(height: 60),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left_outlined,
                          color: Colors.red,
                        ),
                        onPressed:
                            _isBackwardDisabled() ? null : _onPressedBackward,
                      ),
                    ),
                    SizedBox(width: 80),
                    Column(
                      children: [
                        Text(
                          DateFormat.MMMM().format(_focusedDay),
                          style: TextStyle(
                            fontSize: 18, // Adjust the font size as needed
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Mulish',
                          ),
                        ),
                        Text(
                          DateFormat.y().format(_focusedDay),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                            fontFamily: 'Mulish',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.red,
                        ),
                        onPressed: _onPressedForward,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                TableCalendar(
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: calenderStyle(Colors.black),
                    todayTextStyle: calenderStyle(Colors.white),
                    holidayTextStyle: calenderStyle(Colors.red),
                    selectedTextStyle: calenderStyle(Colors.white),
                    weekendTextStyle: calenderStyle(Colors.black),
                    disabledTextStyle: calenderStyle(Colors.grey),
                    outsideTextStyle: calenderStyle(Colors.grey),
                  ),
                  calendarFormat: _calendarFormat,
                  focusedDay: _focusedDay.month == DateTime.now().month &&
                          _focusedDay.year == DateTime.now().year
                      ? DateTime.now()
                      : _focusedDay,
                  firstDay: DateTime(1990),
                  rowHeight: 60,
                  lastDay: DateTime.utc(2030, 10, 16),
                  headerVisible: false,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) async {
                    setState(() {
                      _selectedDay = selectedDay;
                      print(_selectedDay);
                      _focusedDay = focusedDay;
                    });
                  },
                  onPageChanged: (focusedDay) {
                    setState(() {
                      _focusedDay = focusedDay;
                    });
                  },
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 2,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle calenderStyle(Color color) =>
      TextStyle(fontSize: 16, color: color);
}
