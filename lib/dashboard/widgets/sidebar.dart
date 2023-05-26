import 'package:e_learning_dashboard/utils/colors.dart';
import 'package:e_learning_dashboard/utils/functions.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

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
                  height: 410,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sidebarMenuIcon('assets/dashboards.png', white),
                      sidebarMenuIcon('assets/mouse.png', yellow),
                      sidebarMenuIcon('assets/notes.png', yellow),
                      sidebarMenuIcon('assets/calendar-2.png', yellow),
                      sidebarMenuIcon('assets/email.png', yellow),
                      sidebarMenuIcon('assets/settings.png', yellow)
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  height: 415,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sidebarMenuText('Dashboard', white),
                      sidebarMenuText('My classes', yellow),
                      sidebarMenuText('My grades', yellow),
                      sidebarMenuText('Schedule', yellow),
                      sidebarMenuText('Messages', yellow),
                      sidebarMenuText('Settings', yellow)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 190,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      createAvatar('assets/student.webp'),
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
