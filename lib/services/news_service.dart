import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6ae6a45f91ea4770ae48977008b0389f');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      // استخدام map لتحويل البيانات إلى ArticleModel
      List<ArticleModel> articleList = articles
          .map((article) => ArticleModel(
                image: article['urlToImage'],
                title: article['title'],
                subtitle: article['description'],
              ))
          .toList();

      return articleList;
    } catch (error) {
      print('Error fetching news: $error');
      throw Exception('Failed to load news');
    }
  }
}
