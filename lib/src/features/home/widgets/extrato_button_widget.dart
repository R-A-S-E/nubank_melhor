import 'package:flutter/material.dart';

class ExtratoButton extends StatelessWidget {
  final bool isVisibility;
  final VoidCallback onTap;
  const ExtratoButton({
    Key? key,
    required this.isVisibility,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
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
      ),
    );
  }
}
