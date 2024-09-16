import 'package:flutter/material.dart';
import 'package:news/sources/data/models/source.dart';
import 'package:news/sources/data/repository/sources_repository.dart';
import 'package:news/sources/service_locator.dart';

class SourcesViewModel with ChangeNotifier {
  final SourcesRepository repository;

  SourcesViewModel()
      : repository = SourcesRepository(ServiceLocator.sourcesDataSource);

  List<Source> sources = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> getSources(String categoryId) async {
    isLoading = true;
    notifyListeners();
    try {
      sources = await repository.getSources(categoryId);
    } catch (error) {
      errorMessage = error.toString();
    }
    isLoading = false;
    notifyListeners();
  }
}
