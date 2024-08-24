import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/category/categories_grid.dart';
import 'package:news/category/category_details.dart';
import 'package:news/category/category_model.dart';
import 'package:news/drawer/home_drawer.dart';
import 'package:news/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.white,
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        drawer: HomeDrawer(
          onItemSelected: onDrawerItemSelected,
        ),
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body: selectedCategory != null
            ? CategoryDetails(selectedCategory!.id)
            : selectedDrawerItem == DrawerItem.categories
                ? CategoriesGrid(onCategorySelected: onCategorySelected)
                : const SettingsTab(),
      ),
    );
  }

  DrawerItem selectedDrawerItem = DrawerItem.categories;
  CategoryModel? selectedCategory;

  void onDrawerItemSelected(DrawerItem drawerItem) {
    selectedDrawerItem = drawerItem;
    selectedCategory = null;
    setState(() {});
    Navigator.of(context).pop();
  }

  void onCategorySelected(CategoryModel category) {
    selectedCategory = category;
    setState(() {});
  }
}
