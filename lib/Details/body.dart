import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_shop_ui/Details/IconCard.dart';
import 'package:plant_shop_ui/constants.dart';

class Body1 extends StatelessWidget {
  const Body1({super.key});

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          //Image and Icon Crad.....................
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
            child: SizedBox(
              height: size.height * 0.75,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(

                        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                        child: Column(
                        children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                            icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                        ),
                          Spacer(),
                          IconCard(icon: "assets/icons/sun.svg"),
                          IconCard(icon: "assets/icons/icon_2.svg"),
                          IconCard(icon: "assets/icons/icon_3.svg"),
                          IconCard(icon: "assets/icons/icon_4.svg"),
                    ],
                  ),
                      )),


                  //Right side image.......................
                  Container(
                    height: size.height * 0.7,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63)
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29),
                        )
                      ],

                      image: DecorationImage(image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover, alignment: Alignment.centerLeft)
                    ),
                  ),
                ],
              ),
            ),
          ),


          //Bottom data(Title & price).........................
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Angelica\n",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold),
                      ),

                    TextSpan(
                      text: "Russia",
                      style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300
                      )
                    )

                  ]
                )),
                Spacer(),
                Text("\$440",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: kPrimaryColor),)
              ],
            ),
          ),


          //Buy Button and other Buttons.....................
          SizedBox(height: kDefaultPadding,),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width/2,
                height: 84,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor , 
                      padding: EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                  )),
                  child: Text("Buy Now", style: TextStyle(color: Colors.white , fontSize: 20),),
                ),
              ),
              SizedBox(width: 1,),
              Expanded(
                child: SizedBox(
                  width: size.width/2,
                  height: 84,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor ,
                        padding: EdgeInsets.all(14),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                        )),
                    child: Text("Description", style: TextStyle(color: Colors.white , fontSize: 20),),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
