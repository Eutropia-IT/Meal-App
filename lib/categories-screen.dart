import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2.5 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummy
            .map((catData) => CategoryItem(
                  color: catData.color,
                  title: catData.title,
                ))
            .toList(),
      ),
    );
  }
}
