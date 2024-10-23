import 'package:flutter/material.dart';
import 'package:school_management_ui/utils/colors.dart';

class SeeAllItemsWidget extends StatelessWidget {
  const SeeAllItemsWidget({super.key, this.title, this.number});
  final dynamic title;
  final dynamic number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "($number)",
                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Text(
          "See all",
          style: TextStyle(fontWeight: FontWeight.bold, color: secondTextColor, fontSize: 15),
        )
      ],
    );
  }
}
