import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  final String routeName;

  const CategoryView({super.key, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [NewsListViewBuilder(route: routeName)],
        ),
      ),
    );
  }
}
