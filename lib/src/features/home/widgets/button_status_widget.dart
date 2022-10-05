import 'package:flutter/material.dart';

class ButtonStatus extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? value;
  const ButtonStatus({
    Key? key,
    required this.icon,
    required this.text,
    this.value,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  Text(text),
                ],
              ),
              if (value != null) Text('R\$$value'),
            ],
          ),
        ),
      ),
    );
  }
}
