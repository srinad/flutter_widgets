import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen3 extends StatefulWidget {
  const CalenderScreen3({Key? key});

  @override
  State<CalenderScreen3> createState() => _CalenderScreen3State();
}

class _CalenderScreen3State extends State<CalenderScreen3> {
  late DateTime _focusedCalendarDate;
  late DateTime _initialCalendarDate;
  late DateTime _lastCalendarDate;
  DateTime? _selectedCalendarDate; // Declare _selectedCalendarDate

  @override
  void initState() {
    super.initState();
    _focusedCalendarDate = DateTime.now();
    _initialCalendarDate = DateTime.utc(2020, 1, 1);
    _lastCalendarDate = DateTime.utc(2030, 12, 31);
    _selectedCalendarDate = _focusedCalendarDate; // Initialize _selectedCalendarDate
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(20.0),
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // side: BorderSide(color: Colors.black, width: 2.0),
              ),
              child: TableCalendar(
                focusedDay: _focusedCalendarDate,
                firstDay: _initialCalendarDate,
                lastDay: _lastCalendarDate,
                calendarFormat: CalendarFormat.month,
                weekendDays: const [DateTime.sunday, 6],
                startingDayOfWeek: StartingDayOfWeek.monday,
                daysOfWeekHeight: 40.0,
                rowHeight: 60.0,
                headerStyle: const HeaderStyle(
                  titleTextStyle:
                      TextStyle(color: Colors.white, fontSize: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  formatButtonTextStyle:
                      TextStyle(color: Colors.brown, fontSize: 16.0),
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 28,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  // Weekend days color (Sat,Sun)
                  weekendStyle:
                      TextStyle(color: Color.fromARGB(255, 187, 136, 118)),
                ),
                calendarStyle: const CalendarStyle(
                  // Weekend dates color (Sat & Sun Column)
                  weekendTextStyle:
                      TextStyle(color: Color.fromARGB(255, 187, 136, 118)),
                  // highlighted color for today
                  todayDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 187, 136, 118),
                    shape: BoxShape.circle,
                  ),
                  // highlighted color for selected day
                  selectedDecoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle,
                  ),
                ),
                selectedDayPredicate: (currentSelectedDate) {
                  // as per the documentation 'selectedDayPredicate' needs to determine the current selected day.
                  return _selectedCalendarDate != null &&
                      isSameDay(_selectedCalendarDate!, currentSelectedDate);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  // as per the documentation
                  if (!isSameDay(_selectedCalendarDate, selectedDay)) {
                    setState(() {
                      _selectedCalendarDate = selectedDay;
                      _focusedCalendarDate = focusedDay;
                    });
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
