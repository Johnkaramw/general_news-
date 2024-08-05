import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/widget/categroy_listview.dart';
import 'package:news_app/widget/contenar.dart';
import 'package:news_app/widget/News_Top.dart';
import 'package:news_app/widget/news_listview.dart';

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
                'All',
                style: TextStyle(
                  color: Color.fromARGB(218, 115, 255, 0),
                  fontSize: 35,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
