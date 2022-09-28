import 'package:flutter/material.dart';

class ExtratoButton extends StatelessWidget {
  final bool isVisibility;
  const ExtratoButton({
    Key? key,
    required this.isVisibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Conta',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            isVisibility ? 'R\$10.000,98' : '....',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}
