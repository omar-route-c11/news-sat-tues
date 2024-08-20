import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/category/category_item.dart';
import 'package:news/category/category_model.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const List<CategoryModel> categories = [
      CategoryModel(
        name: 'Sports',
        imageName: 'ball',
        color: Color(0xFFC91C22),
      ),
      CategoryModel(
        name: 'Sports',
        imageName: 'ball',
        color: Color(0xFFC91C22),
      ),
      CategoryModel(
        name: 'Sports',
        imageName: 'ball',
        color: Color(0xFFC91C22),
      ),
      CategoryModel(
        name: 'Sports',
        imageName: 'ball',
        color: Color(0xFFC91C22),
      ),
      CategoryModel(
        name: 'Sports',
        imageName: 'ball',
        color: Color(0xFFC91C22),
      ),
      CategoryModel(
        name: 'Sports',
        imageName: 'ball',
        color: Color(0xFFC91C22),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              'Pick your category of interest',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: AppTheme.navy),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              itemBuilder: (_, index) => CategoryItem(
                category: categories[index],
                index: index,
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
