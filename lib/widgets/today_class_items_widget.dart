import 'package:flutter/material.dart';
import 'package:school_management_ui/utils/colors.dart';

class TodayClassItemsWidget extends StatelessWidget {
  const TodayClassItemsWidget({super.key, this.time, this.title, this.profile, this.name});
  final dynamic time;
  final dynamic title;
  final dynamic profile;
  final dynamic name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 110,
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                time,
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
              const Text(
                "AM",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 250,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 250,
                      child: const Text(
                        "Room C1, Faculty of Art & Design Building",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profile),
                radius: 12,
              ),
              const SizedBox(width: 5),
              Text(
                name,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
