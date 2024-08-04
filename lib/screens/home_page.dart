import 'package:flutter/material.dart';
import 'package:news_app/widget/categroy_listview.dart';
import 'package:news_app/widget/contenar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sports',
                style: TextStyle(
                  color: Color.fromARGB(218, 115, 255, 0),
                  fontSize: 35,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const CategoryListView(), // تعديل هنا
    );
  }
}
