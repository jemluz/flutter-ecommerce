import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svSrc;
  final int numOfItems;
  final GestureTapCallback onPressed;

  const IconBtnWithCounter({
    Key key,
    @required this.svSrc,
    this.numOfItems = 0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Container(
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svSrc),
          ),
          if(numOfItems != 0)
          Positioned(
            // top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  numOfItems.toString(),
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}