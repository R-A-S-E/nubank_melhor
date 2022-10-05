import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/features/home/widgets/appbar_home_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/button_status_widget.dart';

class DinheiroPage extends StatefulWidget {
  const DinheiroPage({super.key});

  @override
  State<DinheiroPage> createState() => _DinheiroPageState();
}

bool visibility = true;

class _DinheiroPageState extends State<DinheiroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarHome(
            onTapVisibility: () {
              setState(() {
                visibility = !visibility;
              });
            },
            isVisibility: visibility,
          ),
          ButtonStatus(
            icon: Icons.access_time_filled,
            text: 'Meus Cartões',
          ),
        ],
      ),
    );
  }
}
