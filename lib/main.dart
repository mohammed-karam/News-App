import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  // NewsService(dio: Dio()).getNews(category: 'general');
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
