import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
  height: 200,
  width: double.infinity,
  child: const Center(
    child: Text(
      "Eu amo Flutter!",
    ),
  ),
);
  }
}