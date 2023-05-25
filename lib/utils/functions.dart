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

Text text(String text, double fontSize) {
  return Text(
    text,
    style: TextStyle(
        fontSize: fontSize, color: deepGreen, fontWeight: FontWeight.w600),
  );
}

RichText date(String text1, String text2) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: text1,
        style: const TextStyle(
            color: deepGreen, fontSize: 16, fontWeight: FontWeight.w600)),
    TextSpan(
        text: text2,
        style: const TextStyle(
            color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w600))
  ]));
}

Container scheduleCard(String course, String time, String middleText,
    String secondText, String subText) {
  return Container(
      width: 500,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.desk),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(course, 20),
                          Text(
                            time,
                            style: const TextStyle(color: yellow, fontSize: 10),
                          ),
                        ],
                      ),
                      const Icon(Icons.chevron_right),
                    ]),
              ),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                color: Colors.grey,
              ),
              text(middleText, 22),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                color: Colors.grey,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                text(secondText, 14),
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
