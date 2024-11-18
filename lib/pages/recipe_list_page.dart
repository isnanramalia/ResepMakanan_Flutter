import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import 'recipe_detail_page.dart';

class RecipeListPage extends StatelessWidget {
  final String category;

  RecipeListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    final recipes = dummyRecipes.where((recipe) => recipe.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Resep: $category'),
      ),
      body: recipes.isEmpty
          ? Center(child: Text('Tidak ada resep untuk kategori ini.'))
          : ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              recipes[index].imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(recipes[index].title),
            subtitle: Text('Waktu: ${recipes[index].duration} menit'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
