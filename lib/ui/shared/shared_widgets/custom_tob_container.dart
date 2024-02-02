import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';

class TobContainer extends StatelessWidget {
  final String text;
  final IconData? iconArrowForward;
  final bool isimageball;
  const TobContainer({
    super.key,
    required this.text,
    this.iconArrowForward,
    required this.isimageball,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1),
      height: screenWidth(4),
      decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(25),
              bottomStart: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: screenWidth(50)),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/pngs/ic_alkarama.png',
                  width: screenWidth(7.5),
                ),
                CustomText(
                  text: text,
                  styleType: TextStyleType.SUBTITLE,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth(25)),
            child: Padding(
              padding: EdgeInsetsDirectional.only(top: screenWidth(40)),
              child: Row(
                children: [
                  isimageball
                      ? Image.asset(
                          'assets/images/pngs/ic_ball.png',
                          width: screenWidth(8.5),
                        )
                      : Container(
                          width: screenWidth(7),
                          height: screenWidth(7),
                          color: AppColors.blueColor,
                        ),
                  Icon(
                    iconArrowForward,
                    size: screenWidth(15),
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
