import 'package:discount_app/beauty_data.dart';
import 'package:discount_app/beauty_model.dart';
import 'package:flutter/material.dart';

class BeautyPage extends StatefulWidget {
  @override
  _BeautyPageState createState() => _BeautyPageState();
}

class _BeautyPageState extends State<BeautyPage> {
  List<BeautyModel> Beauty = getBeauty.Beauty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: Beauty.length,
          itemBuilder: (context, index) {
            BeautyModel beauty = Beauty[index];
            return GestureDetector(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        height: 150,
                        child: Image(
                          height: 100,
                          width: 150,
                          image: AssetImage(beauty.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(beauty.name),
                            ),
                            Container(
                              child: Text(
                                beauty.location
                              ),
                            )
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
