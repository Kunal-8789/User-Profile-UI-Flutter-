 import 'package:flutter/material.dart';
import 'package:profiletask/commons/rounded_image.dart';
import 'package:profiletask/style_guide/text.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children:[
            RoundedImage(
              imagePath:"images/profile.jpg",
              size: Size.fromWidth(200.0),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kunal Kaushik ",
                  style: whiteNameTextStyle,
                ),
                Text(
                  ",18",
                  style: whiteNameTextStyle,
                ),
              ],
            )
          ],
        )
    );
  }
}
