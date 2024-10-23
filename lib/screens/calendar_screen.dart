import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management_ui/models/task_model.dart';
import 'package:school_management_ui/utils/colors.dart';
import 'package:school_management_ui/widgets/calendar_widget.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topCenter,
          color: kCardColor,
          height: size.height,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today, color: Colors.grey),
                    const SizedBox(width: 15),
                    RichText(
                      text: TextSpan(
                        text: DateFormat("MMM").format(DateTime.now()),
                        style: TextStyle(fontWeight: FontWeight.w900, color: textColor, fontSize: 28),
                        children: [
                          TextSpan(
                            text: " ${DateFormat("yyyy").format(DateTime.now())}",
                            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "Today",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: secondTextColor,
                    letterSpacing: -0.5,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          child: Container(
            height: size.height - 160,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalendarWidget(weekDay: "S", date: 7, isActive: false),
                      CalendarWidget(weekDay: "M", date: 8, isActive: false),
                      CalendarWidget(weekDay: "T", date: 9, isActive: false),
                      CalendarWidget(weekDay: "W", date: 10, isActive: true),
                      CalendarWidget(weekDay: "T", date: 11, isActive: false),
                      CalendarWidget(weekDay: "F", date: 12, isActive: false),
                      CalendarWidget(weekDay: "S", date: 13, isActive: false),
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      tasks.length,
                      (index) {
                        final task = tasks[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 13,
                                    decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(15)),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  SizedBox(
                                    width: size.width / 1.15,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: task.currentTime,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                            children: const [
                                              TextSpan(
                                                text: " AM",
                                                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          task.remainingTime ?? "",
                                          style: const TextStyle(color: Colors.grey, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 220,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300]!,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: const EdgeInsets.only(right: 10, left: 30),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      task.title ?? "",
                                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                                    ),
                                    Text(
                                      task.subTitle ?? "",
                                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 12,
                                          backgroundImage: task.profileImage != null ? NetworkImage(task.profileImage!) : null,
                                        ),
                                        const SizedBox(width: 8),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              task.name ?? "",
                                              style: const TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              task.id ?? "",
                                              style: const TextStyle(fontSize: 16, color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.location_on, size: 22, color: Colors.grey),
                                        const SizedBox(width: 5),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              task.location ?? "",
                                              style: const TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              task.room ?? "",
                                              style: const TextStyle(fontSize: 16, color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
