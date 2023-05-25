//containers to be colored and given rounded borders

import 'package:e_learning_dashboard/utils/colors.dart';
import 'package:e_learning_dashboard/utils/functions.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 50,
          width: 250,
          child: Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: deepGreen,
                    ),
                    hintText: 'Search',
                    fillColor: lightGreen,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.notification_add_outlined),
                  const SizedBox(
                    width: 20,
                  ),
                  text("artificial intelligence", 10),
                  const Icon(Icons.arrow_downward),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            // left
            Column(
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Container(),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                text('Schedule', 18),
                const SizedBox(
                  height: 12,
                ),
                date('Today', '   February, 17 Sunday'),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(children: [
                    Column(
                      children: [
                        const Row(
                          children: [],
                        ),
                        text('Encapsulates Logic with Functions', 15)
                      ],
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1,
                      indent: 20,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        text('Den Hoo', 12),
                        text('Python, Prolog, C++', 12),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: yellow,
                            ),
                            Icon(
                              Icons.message,
                              color: yellow,
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                ),
                const SizedBox(
                  height: 12,
                ),
                date('19Feb', '   in 2 days'),
                const SizedBox(
                  height: 12,
                ),
                scheduleCard('Statistics', '20:45-22:00',
                    '"Fisher information"', 'Lisa Metrics', 'Data Science'),
                const SizedBox(
                  height: 12,
                ),
                scheduleCard('Math', '20:00-21:30', '"Delta function"',
                    'Still Benler', 'Math & Statistics'),
                const SizedBox(
                  height: 12,
                ),
                date('21 Feb', '   in 4 days'),
                const SizedBox(
                  height: 12,
                ),
                scheduleCard('Python', '18:00-20:30', ' Workshop: "Tetris"',
                    'Den Hoo', 'Python, Prolog, C++'),
              ],
            ),
            //right
            const Column(
              children: [],
            ),
          ],
        )
      ]),
    );
  }
}
