import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({required category}) async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=3abd45ce49b04293a56a01b315226b85&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        articleList.add(
          ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subtitle: article['description'],
            newsUrl: article['url'],
          ),
          // ArticleModel.fromJson(article)
        );
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
