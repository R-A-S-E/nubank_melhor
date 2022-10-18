import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: (value) {
              page = value;
              setState(() {});
            },
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      child: const Icon(Icons.arrow_left),
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear,
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        color: page == 0 ? Colors.grey : Colors.black,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 10,
                        width: 10,
                        color: page == 1 ? Colors.grey : Colors.black,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 10,
                        width: 10,
                        color: page == 2 ? Colors.grey : Colors.black,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      child: const Icon(Icons.arrow_right),
                      onPressed: () {
                        if (page == 2) {
                          Navigator.of(context).pushReplacementNamed('/home');
                        }
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear,
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40)
            ],
          )
        ],
      ),
    );
  }
}
