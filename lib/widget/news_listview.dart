import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_top.dart';
import 'package:dio/dio.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true; // تغيير التسمية إلى isLoading

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    try {
      final fetchedArticles = await NewsService(Dio()).getNews();
      setState(() {
        articles = fetchedArticles;
        isLoading = false; // ضبط حالة التحميل
      });
    } catch (error) {
      setState(() {
        isLoading = false;
      });
      // يمكن التعامل مع الأخطاء هنا، مثل عرض رسالة خطأ
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return NewsTop(articleModel: articles[index]);
              },
              childCount: articles.length,
            ),
          );
  }
}
