import 'package:flutter/material.dart';
import 'package:news_app/widget/categroy_listview.dart';
import 'package:news_app/widget/news_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const _AppBarTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: const [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(height: 22),
            ),
            NewsListView(), // اسم الويدجت صحيح الآن
          ],
        ),
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
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
    );
  }
}
