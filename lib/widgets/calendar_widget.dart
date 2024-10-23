import 'package:flutter/material.dart';
import 'package:school_management_ui/utils/colors.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key, required this.weekDay, required this.date, required this.isActive});
  final String weekDay;
  final int date;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? secondTextColor : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 75,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weekDay,
            style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          ),
          Text(
            date.toString(),
            style: TextStyle(color: isActive ? Colors.white : Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}
