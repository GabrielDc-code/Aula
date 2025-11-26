import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String? title;
  
  const MyTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: EdgeInsets.only(bottom : 8),
                child: Text(
                  title!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
                ),
              );

  }
}