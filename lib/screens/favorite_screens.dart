import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoritemeals;

  const FavoriteScreen(this.favoritemeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favoritemeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição foi marcada como favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritemeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoritemeals[index]);
        },
      );
    }
  }
}
