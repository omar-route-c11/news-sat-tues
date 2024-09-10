import 'package:flutter/material.dart';
import 'package:news/shared/app_theme.dart';
import 'package:news/news/data/models/news.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  const NewsItem(
    this.news, {
    super.key,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    final titleSmallStyle = Theme.of(context).textTheme.titleSmall;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: Image.network(
              news.urlToImage ??
                  'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg',
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            news.source?.name ?? '',
            style: titleSmallStyle?.copyWith(
              fontSize: 10,
              color: AppTheme.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            news.title ?? '',
            style: titleSmallStyle?.copyWith(fontWeight: FontWeight.w500),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              timeago.format(DateTime.now()),
              style: titleSmallStyle?.copyWith(
                fontSize: 13,
                color: AppTheme.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
