import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management_ui/utils/colors.dart';
import 'package:school_management_ui/widgets/see_all_items_widget.dart';
import 'package:school_management_ui/widgets/tasks_items_widget.dart';
import 'package:school_management_ui/widgets/today_class_items_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kheaderColor,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
              child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(text: DateFormat("EEE").format(DateTime.now()), style: TextStyle(color: textColor, letterSpacing: 0, fontWeight: FontWeight.w900), children: [
                    TextSpan(
                      text: " ${DateFormat("dd MMM").format(DateTime.now())}",
                      style: TextStyle(letterSpacing: -1, color: textColor, fontWeight: FontWeight.normal),
                    )
                  ]),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.2),
                          blurRadius: 7,
                          spreadRadius: 7,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      image: const DecorationImage(
                        image: NetworkImage("https://img.freepik.com/free-photo/close-up-view-strict-young-handsome-caucasian-man-wearing-glasses-standing-profile-view-isolated-crimson-wall_141793-79811.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi William",
                        style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900, letterSpacing: -0.5, color: textColor),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Here is a list of schedule\nyou need to check ...",
                        style: TextStyle(
                          height: 1.8,
                          color: textColor.withOpacity(0.75),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
        ),
        Positioned(
          top: 220,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView(
              children: const [
                SeeAllItemsWidget(title: "TODAY CLASSES", number: 3),
                SizedBox(height: 20),
                TodayClassItemsWidget(
                  time: "07:00",
                  title: "The Basic of Typography I",
                  profile: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDRlp-KGr_M94k_oor4Odjn2UzbAS7n1YoA&s",
                  name: "Nico William",
                ),
                TodayClassItemsWidget(
                  time: "09:30",
                  title: "Design Psychology: Principle of Arts",
                  profile: "https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?s=612x612&w=0&k=20&c=d8W_C2D-2rXlnkyl8EirpHGf-GpM62gBjpDoNryy98U=",
                  name: "Jessie Sutton",
                ),
                SizedBox(height: 20),
                SeeAllItemsWidget(title: "YOUR TASKS", number: 4),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TasksItemsWidget(color: Colors.red, dayLeft: 3, courseTitle: "The Basic of Typography I"),
                      TasksItemsWidget(color: Colors.green, dayLeft: 10, courseTitle: "Design Psychology: Principle of arts"),
                      TasksItemsWidget(color: Colors.red, dayLeft: 10, courseTitle: "Design Psychology: Principle of arts"),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
