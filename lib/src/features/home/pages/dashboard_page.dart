import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/features/home/pages/home_page.dart';
import 'package:nubank_melhor/src/features/home/widgets/appbar_home_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/button_status_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/card_text_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/extrato_button_widget.dart';
import 'package:nubank_melhor/src/features/home/widgets/list_ball_icon_text_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

bool visibility = true;
int? _value = 1;

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
          Wrap(
            children: List<Widget>.generate(
              3,
              (int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChoiceChip(
                    label: Text('Item $index'),
                    selected: _value == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? index : null;
                      });
                    },
                  ),
                );
              },
            ).toList(),
          ),
          Checkbox(
            checkColor: Colors.white,
            // fillColor: MaterialStateProperty.resolveWith(getColor),
            value: visibility,
            onChanged: (bool? value) {
              setState(() {
                visibility = value!;
              });
            },
          ),
          ExtratoButton(
            onTap: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1988),
                  lastDate: DateTime.now());
              // showTimePicker(
              //   onEntryModeChanged: ,
              //   context: context,
              //   initialTime: TimeOfDay.now(),
              // );
              // SnackBar(
              //   content: Container(
              //     height: 40,
              //     width: 40,
              //     color: Colors.amber,
              //   ),
              //   duration: Duration(seconds: 2),
              // );

              // showBottomSheet(
              //     backgroundColor: Colors.red,
              //     context: context,
              //     builder: (context) =>
              //         Center(child: CircularProgressIndicator()));
            },
            isVisibility: visibility,
          ),
          const ListBallIconText(),
          const ButtonStatus(
            icon: Icons.access_time_filled,
            text: 'Meus Cartões',
          ),
          CardText(
            text: 'asdasd',
          )
        ]),
      ),
    );
  }
}
