import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/pages/home/widgets/appbar_home_widget.dart';
import 'package:nubank_melhor/src/pages/home/widgets/extrato_button_widget.dart';
import 'package:nubank_melhor/src/pages/home/widgets/list_ball_icon_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool visibility = true;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
        ],
        selectedItemColor: Colors.purple.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          AppBarHome(
              onTapVisibility: () {
                setState(() {
                  visibility = !visibility;
                });
              },
              isVisibility: visibility),
          ExtratoButton(
            isVisibility: visibility,
          ),
          const ListBallIconText(),
          ExtratoButton(
            isVisibility: visibility,
          ),
          ExtratoButton(
            isVisibility: visibility,
          ),
          ExtratoButton(
            isVisibility: visibility,
          ),
          ExtratoButton(
            isVisibility: visibility,
          ),
          ExtratoButton(
            isVisibility: visibility,
          ),
          ExtratoButton(
            isVisibility: visibility,
          ),
          const Text('sdasd')
        ]),
      ),
    );
  }
}
