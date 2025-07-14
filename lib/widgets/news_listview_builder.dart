import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/error_state.dart';
import 'package:news_app/widgets/loading_state.dart';
import 'package:news_app/widgets/new_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.route});
  final String route;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: widget.route);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return ErrorView(message: 'oops there were some issues :(');
        } else {
          // no error and no data yet (still fetching ,so it will load)
          return SliverFillRemaining(child: LoadingView());
        }
      },
    );

    // return _loading
    //     ? SliverFillRemaining(
    //         child: Center(child: SpinKitCircle(color: Colors.blue, size: 50.0)),
    //       )
    //     : articles.isNotEmpty
    //     ? NewsListView(articles: articles)
    //     : SliverFillRemaining(
    //         child: Center(
    //           child: Text(
    //             'oops there were some issues :(',
    //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //       );
  }
}
