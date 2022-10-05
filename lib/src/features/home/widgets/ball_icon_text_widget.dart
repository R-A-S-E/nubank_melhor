// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BallIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? value;
  const BallIconText({
    Key? key,
    required this.icon,
    required this.text,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey.shade300,
              ),
              child: Icon(icon),
            ),
            if (value != null)
              Positioned(
                bottom: 0,
                child: Container(
                  height: 15,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.purple),
                  child: Center(
                      child: Text(
                    value!,
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 80,
          height: 40,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
