import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(children: [SideBar(), MainSection()]),
      ),
    );
  }
}
