import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nubank_melhor/src/features/home/pages/dashboard_page.dart';
import 'package:nubank_melhor/src/features/home/pages/dinheiro_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final PageController pageController = PageController();
int pageCurrent = 0;
void test() async {
  var dio = Dio();
  final response = await dio.get('https://google.com');
  print(response.data);
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    test();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (a) {
          pageController.jumpToPage(a);
          pageCurrent = a;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
        ],
        selectedItemColor: Colors.purple.shade700,
        unselectedItemColor: Colors.grey,
        currentIndex: pageCurrent,
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [DashBoardPage(), DinheiroPage()],
      ),
    );
  }
}
