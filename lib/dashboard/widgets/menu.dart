import 'package:e_learning_dashboard/utils/colors.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  icon(String imagePath, Color color) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 30,
          color: color,
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  text(String text, Color color) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(color: color, fontSize: 30),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        color: deepGreen,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/idea.png',
                  color: yellow,
                  height: 70,
                ),
                const SizedBox(width: 10),
                const Text(
                  'SMART',
                  style: TextStyle(color: white, fontSize: 40),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      icon('assets/dashboards.png', white),
                      icon('assets/mouse.png', yellow),
                      icon('assets/notes.png', yellow),
                      icon('assets/calendar-2.png', yellow),
                      icon('assets/email.png', yellow),
                      icon('assets/settings.png', yellow)
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('Dashboard', white),
                      text('My classes', yellow),
                      text('My grades', yellow),
                      text('Schedule', yellow),
                      text('Messages', yellow),
                      text('Settings', yellow)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/student.webp'),
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/turn-off.png',
                        height: 20,
                        color: yellow,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Jones Armani',
                    style: TextStyle(color: white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Elementary',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
