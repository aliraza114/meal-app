import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {

  List<Meal> favoriteMeal;
  FavouriteScreen(this.favoriteMeal);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeal.isEmpty){
return Center(child: Text('No Favorite Food Yet! - To add to favourites click the start on the Meal'),);
    } else return
    
    ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeal[index].id,
            title: favoriteMeal[index].title,
            imageUrl: favoriteMeal[index].imageUrl,
            duration: favoriteMeal[index].duration,
            affordability: favoriteMeal[index].affordability,
            complexity: favoriteMeal[index].complexity,
          );
        },
        itemCount: favoriteMeal.length,
      );
  }
}