// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_container.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool _loading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(dio: Dio()).getNews();
//     setState(() {
//       _loading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _loading == false
//         ? SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length, (
//               context,
//               index,
//             ) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 32),
//                 child: NewsTile(article: articles[index]),
//               );
//             }),
//           )
//         : SliverFillRemaining(
//             child: Center(child: SpinKitCircle(color: Colors.blue, size: 50.0)),
//           );
//   }
// }
