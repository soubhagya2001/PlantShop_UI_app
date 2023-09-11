
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop_ui/constants.dart';
class HeaderWithSearchBox extends StatelessWidget {
  final Size size;
  const HeaderWithSearchBox({Key? key, required this.size}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height*0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding
            ),
            height: size.height*0.2-27,

            decoration: BoxDecoration(color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),

            child: Row(
              children: <Widget>[
                Text('RK Traders',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold
                  ) ,),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),

          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),

                      )
                    ]
                ),
                // child: Row(
                //   children: [
                //     TextField(
                //       onChanged: (value){},
                //       decoration: InputDecoration(
                //         hintText: "Search",
                //         hintStyle: TextStyle(
                //           color: kPrimaryColor.withOpacity(0.5),
                //         ),
                //         enabledBorder: InputBorder.none,
                //         focusedBorder: InputBorder.none
                //
                //       ),
                //     ),
                //     SvgPicture.asset("assets/icons/search.svg"),
                //   ],
                // ),


              ))
        ],
      ),
    );
  }
}
