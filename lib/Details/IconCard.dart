import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      padding: EdgeInsets.all(kDefaultPadding/2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.2),
            ),
            BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white
            )
          ]
      ),
      child: SvgPicture.asset("$icon"),
    );
  }
}
