import 'package:discount_app/model/beauty_data.dart';
import 'package:discount_app/model/beauty_model.dart';
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
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            width: 150,
                            image: AssetImage(beauty.image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: Text(
                                beauty.name,
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
                                beauty.location,
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
                              child: Text(beauty.percentage,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),),
                            ),
                          ],
                        ),
                      ),
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
