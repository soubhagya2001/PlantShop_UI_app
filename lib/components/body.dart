import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_shop_ui/Details/details_screen.dart';
import 'package:plant_shop_ui/components/FeaturedPlantCard.dart';
import 'package:plant_shop_ui/components/HeaderWithsearchBox.dart';
import 'package:plant_shop_ui/components/RecommendPlantCard.dart';
import 'package:plant_shop_ui/constants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox( size: size,),

          //Title with Underline......................
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Container(
                  height: 24,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding/4),
                        child: Text(
                          "Recommended",
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,

                          child: Container(
                            margin: EdgeInsets.only(right: kDefaultPadding/4),
                            height: 7,
                            color: kPrimaryColor.withOpacity(0.2),
                          )),

                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                },
                 style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
                  child: Text('More',
                    style: TextStyle(color: Colors.white),),

                )
              ],
            ),
          ),


          //Recommended Plants........................
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendPlantCard(image: "assets/images/image_1.png", title: "Samantha", country: "Russia", price: 440, press: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                }),
                RecommendPlantCard(image: "assets/images/image_2.png", title: "Angelica", country: "Russia", price: 440, press: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                }),
                RecommendPlantCard(image: "assets/images/image_3.png", title: "Samantha", country: "Russia", price: 440, press: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                }),
              ],
            ),
          ),


          //Featured Plants.................
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Container(
                  height: 24,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding/4),
                        child: Text(
                          "Featured Plants",
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,

                          child: Container(
                            margin: EdgeInsets.only(right: kDefaultPadding/4),
                            height: 7,
                            color: kPrimaryColor.withOpacity(0.2),
                          )),

                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: (){},
                  //style: ButtonStyle(backgroundColor: ),
                  style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
                  child: Text('More',
                    style: TextStyle(color: Colors.white),),

                )
              ],
            ),
          ),


          //Featured Plants Images.........................
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlantCard(image: "assets/images/bottom_img_1.png", press: (){}),
                FeaturedPlantCard(image: "assets/images/bottom_img_2.png", press: (){}),
                FeaturedPlantCard(image: "assets/images/bottom_img_2.png", press: (){}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
