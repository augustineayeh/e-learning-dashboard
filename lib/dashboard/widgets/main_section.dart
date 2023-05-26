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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 1050,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 45,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 20),
                      child: Icon(
                        Icons.search,
                        color: deepGreen,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: lightGreen),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: lightGreen),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.notifications_outlined),
                  const SizedBox(
                    width: 20,
                  ),
                  text("Artificial intelligence", 20),
                  const Icon(Icons.expand_more),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: 1070,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // left
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  text('Schedule', 30),
                  const SizedBox(
                    height: 12,
                  ),
                  date('Today', '   February, 17 Sunday'),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: lightGreen,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
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
                        color: Colors.white,
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
                  date('19 Feb', '   in 2 days'),
                  const SizedBox(
                    height: 12,
                  ),
                  scheduleCard(
                      'assets/analytics.png',
                      'Statistics',
                      '20:45-22:00',
                      '"Fisher information"',
                      'Lisa Metrics',
                      'Data Science'),
                  const SizedBox(
                    height: 12,
                  ),
                  scheduleCard('assets/maths.png', 'Math', '20:00-21:30',
                      '"Delta function"', 'Still Benler', 'Math & Statistics'),
                  const SizedBox(
                    height: 12,
                  ),
                  date('21 Feb', '   in 4 days'),
                  const SizedBox(
                    height: 12,
                  ),
                  scheduleCard('assets/coding.png', 'Python', '18:00-20:30',
                      ' Workshop: "Tetris"', 'Den Hoo', 'Python, Prolog, C++'),
                ],
              ),
              //right
              SizedBox(
                width: 260,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    createPerson('assets/student.webp', 'Dick'),
                    createPerson('assets/student.webp', 'Lisa'),
                    createPerson('assets/student.webp', 'Den'),
                    createPerson('assets/student.webp', 'Still'),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
