import 'package:flutter/material.dart';
import 'recipe_list_page.dart';

class HomePage extends StatelessWidget {
  final List<String> categories = [
    "Makanan Utama",
    "Makanan Penutup",
    "Minuman",
    "Camilan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Resep'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              categories[index],
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeListPage(category: categories[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
