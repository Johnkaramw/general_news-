import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/services/news_service.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(const NewsApp());
}

final dio = Dio();

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
