import 'package:flutter/material.dart';

class TasksItemsWidget extends StatelessWidget {
  const TasksItemsWidget({super.key, required this.color, required this.dayLeft, required this.courseTitle});
  final Color color;
  final int dayLeft;
  final String courseTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      height: 170,
      width: 175,
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deadline",
            style: TextStyle(fontSize: 15, color: Colors.black26),
          ),
          Row(
            children: [
              CircleAvatar(radius: 4, backgroundColor: color),
              const SizedBox(width: 5),
              Text(
                "$dayLeft days left",
                style: const TextStyle(fontSize: 17, color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 130,
            child: Text(
              courseTitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
