class Recipe {
  final String title;
  final String category;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
  });
}
