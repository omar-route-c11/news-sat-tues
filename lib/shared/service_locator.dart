import 'package:news/news/data/data_source/news_api_data_source.dart';
import 'package:news/news/data/data_source/news_data_source.dart';
import 'package:news/sources/data/data_source/sources_api_data_source.dart';
import 'package:news/sources/data/data_source/sources_data_source.dart';

class ServiceLocator {
  static SourcesDataSource sourcesDataSource = SourcesAPIDataSource();
  static NewsDataSource newsDataSource = NewsAPIDataSource();
}
