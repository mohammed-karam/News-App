import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  final String routeName;
  final String title;

  const CategoryView({super.key, required this.routeName, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeView();
                },
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
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
