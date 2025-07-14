import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ), // it is horizontal so, no problem when putting it on a vertical scroll list view.  --> only vertical vertical and horizontal horizontal cause problems
              SliverToBoxAdapter(child: SizedBox(height: 50)),
              NewsListViewBuilder(route: 'general'),
            ],
          ),
        ),
      ),
    );
  }
}
