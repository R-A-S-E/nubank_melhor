import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/features/home/widgets/appbar_home_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/button_status_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/extrato_button_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/list_ball_icon_text_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

bool visibility = true;

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          AppBarHome(
            onTapVisibility: () {
              setState(() {
                visibility = !visibility;
              });
            },
            isVisibility: visibility,
            name: 'Rafael',
          ),
          ExtratoButton(
            isVisibility: visibility,
          ),
          const ListBallIconText(),
          const ButtonStatus(
            icon: Icons.access_time_filled,
            text: 'Meus Cartões',
          ),
        ]),
      ),
    );
  }
}
