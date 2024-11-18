import '../models/recipe_model.dart';

final List<Recipe> dummyRecipes = [
  Recipe(
    title: "Nasi Goreng",
    category: "Makanan Utama",
    imageUrl: "https://via.placeholder.com/150",
    duration: 30,
    ingredients: ["Nasi", "Telur", "Kecap", "Bumbu"],
    steps: ["Panaskan wajan", "Masukkan bahan", "Goreng hingga matang"],
  ),
  Recipe(
    title: "Pancake",
    category: "Makanan Penutup",
    imageUrl: "https://via.placeholder.com/150",
    duration: 20,
    ingredients: ["Tepung", "Susu", "Telur"],
    steps: ["Campur bahan", "Masak di wajan", "Sajikan dengan topping"],
  ),
];
