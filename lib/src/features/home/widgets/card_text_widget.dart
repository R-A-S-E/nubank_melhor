import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String text;
  const CardText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.grey[350]),
          child: Center(
            child: Text(text),
          )),
    );
  }
}
