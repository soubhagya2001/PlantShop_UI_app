import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Details/details_screen.dart';
import '../constants.dart';

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({super.key, required this.image, required this.title, required this.country, required this.price, required this.press});

  final String image , title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          InkWell(

            child: Container(
              //margin: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding/2,
              //bottom: kDefaultPadding*2.5),
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    ),
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: TextStyle(fontSize: 15, color: Colors.black)
                        ),

                        TextSpan(text: "$country".toUpperCase(),
                            style: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                                fontSize: 15))
                      ]
                  )),
                  Spacer(),
                  Text("\$$price".toString(), style: TextStyle(color: kPrimaryColor),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
