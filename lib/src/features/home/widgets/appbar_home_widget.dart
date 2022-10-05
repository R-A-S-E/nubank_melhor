import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  final VoidCallback onTapVisibility;
  final bool isVisibility;
  final String? name;
  const AppBarHome(
      {Key? key,
      required this.onTapVisibility,
      required this.isVisibility,
      this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade700,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade300,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: isVisibility
                        ? const Icon(Icons.person_outline, color: Colors.white)
                        : const Image(
                            image: NetworkImage(
                                'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg')),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: onTapVisibility,
                        icon: Icon(
                            isVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.help_outline, color: Colors.white),
                      const SizedBox(width: 16),
                      const Icon(Icons.mail_outline, color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
            if (name != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Olá, $name",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
