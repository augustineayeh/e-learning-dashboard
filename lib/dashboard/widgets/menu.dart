import 'package:e_learning_dashboard/utils/colors.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  icon(
    String imagePath,
  ) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 35,
          color: yellow,
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  text(String myText) {
    return Column(
      children: [
        Text(
          myText,
          style: const TextStyle(color: yellow, fontSize: 30),
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
                      Image.asset(
                        'assets/dashboards.png',
                        height: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      icon('assets/mouse.png'),
                      icon('assets/notes.png'),
                      icon('assets/calendar-2.png'),
                      icon('assets/email.png'),
                      icon('assets/settings.png')
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
                      const Text(
                        'Dashboard',
                        style: TextStyle(color: white, fontSize: 30),
                      ),
                      const SizedBox(height: 30),
                      text('My classes'),
                      text('My grades'),
                      text('Schedule'),
                      text('Messages'),
                      text('Settings'),
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
