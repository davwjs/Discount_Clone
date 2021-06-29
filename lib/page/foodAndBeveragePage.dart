import 'package:discount_app/model/beauty_data.dart';
import 'package:discount_app/model/beauty_model.dart';
import 'package:discount_app/model/food_data.dart';
import 'package:discount_app/model/food_model.dart';
import 'package:flutter/material.dart';

class FoodAndBeveragePage extends StatefulWidget {
  @override
  _FoodAndBeveragePageState createState() => _FoodAndBeveragePageState();
}

class _FoodAndBeveragePageState extends State<FoodAndBeveragePage> {
  List<FoodModel> Food = getFood.Food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: Food.length,
          itemBuilder: (context, index) {
            FoodModel food = Food[index];
            return GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        height: 100,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                width: 150,
                                height: 100,
                                image: AssetImage(food.image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFa5d9b3)
                              ),
                              margin: EdgeInsets.only(top: 5, left: 95),
                              height: 25,
                              width: 50,
                              child: Text(
                                food.distance,
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: Text(
                                food.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text(
                                food.location,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text(
                                food.percentage,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
