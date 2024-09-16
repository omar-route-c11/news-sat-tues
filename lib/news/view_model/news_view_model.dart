import 'package:flutter/material.dart';
import 'package:news/news/data/models/news.dart';
import 'package:news/news/data/repository/news_repository.dart';
import 'package:news/sources/service_locator.dart';

class NewsViewModel with ChangeNotifier {
  final NewsRepository newsRepository;

  NewsViewModel()
      : newsRepository = NewsRepository(ServiceLocator.newsDataSource);

  List<News> newsList = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> getNews(String sourceId) async {
    isLoading = true;
    notifyListeners();
    try {
      newsList = await newsRepository.getNews(sourceId);
    } catch (error) {
      errorMessage = error.toString();
    }
    isLoading = false;
    notifyListeners();
  }
}
