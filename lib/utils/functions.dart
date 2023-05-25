import 'package:e_learning_dashboard/utils/colors.dart';
import 'package:flutter/material.dart';

Image sidebarMenuIcon(String imagePath, Color color) {
  return Image.asset(
    imagePath,
    height: 30,
    color: color,
  );
}

Text sidebarMenuText(String text, Color color) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 30),
  );
}

Text text(String text, int fontSize) {
  return Text(
    text,
    style: const TextStyle(color: deepGreen),
  );
}

RichText date(String text1, String text2) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: text1, style: const TextStyle(color: deepGreen, fontSize: 12)),
    TextSpan(
        text: text2, style: const TextStyle(color: Colors.grey, fontSize: 10))
  ]));
}

Container scheduleCard(String course, String time, String middleText,
    String secondText, String subText) {
  return Container(
      child: Row(
    children: [
      Row(
        children: [
          Row(children: [
            const Icon(Icons.desk),
            Column(
              children: [
                text(course, 22),
                Text(
                  time,
                  style: const TextStyle(color: yellow, fontSize: 10),
                ),
              ],
            ),
            const Icon(Icons.arrow_right),
          ]),
          text(middleText, 22),
          Column(children: [
            text(secondText, 10),
            Text(
              subText,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
            )
          ])
        ],
      )
    ],
  ));
}
