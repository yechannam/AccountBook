import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: const [],
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text('Today'),
                  ],
                ),
                //row + 1 (month)
              ],
            ),
            //list box
          ],
        ),
      ),
    );
  }
}
