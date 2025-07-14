import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final categories = const [
    CategoryModel(
      categoryName: 'Bussiness',
      imageAssetUrl: 'assets/business.avif',
      routeName: 'business',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      imageAssetUrl: 'assets/entertainment.avif',
      routeName: 'entertainment',
    ),
    CategoryModel(
      categoryName: 'General',
      imageAssetUrl: 'assets/general.avif',
      routeName: 'general',
    ),
    CategoryModel(
      categoryName: 'Health',
      imageAssetUrl: 'assets/health.avif',
      routeName: 'health',
    ),
    CategoryModel(
      categoryName: 'Science',
      imageAssetUrl: 'assets/science.avif',
      routeName: 'science',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imageAssetUrl: 'assets/sports.avif',
      routeName: 'sports',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imageAssetUrl: 'assets/technology.jpeg',
      routeName: 'technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
