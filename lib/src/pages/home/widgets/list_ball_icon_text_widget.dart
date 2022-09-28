import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/pages/home/widgets/ball_icon_text_widget.dart';

class ListBallIconText extends StatelessWidget {
  const ListBallIconText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BallIconText(icon: Icons.pix, text: 'Pix'),
          BallIconText(icon: Icons.abc_outlined, text: 'Pagar'),
          BallIconText(icon: Icons.workspaces_filled, text: 'Pegar Emprestimo'),
          BallIconText(icon: Icons.access_alarms_sharp, text: 'Transferir'),
          BallIconText(icon: Icons.account_balance_rounded, text: 'Dinheiro'),
          BallIconText(icon: Icons.accessibility_new, text: 'Problema'),
        ],
      ),
    );
  }
}
