import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,-10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}
