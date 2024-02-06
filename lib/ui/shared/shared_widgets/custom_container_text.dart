import 'package:alkarama_sport_club/core/enums/text_style_type.dart';
import 'package:alkarama_sport_club/ui/shared/colors.dart';
import 'package:alkarama_sport_club/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:alkarama_sport_club/ui/shared/utlis.dart';
import 'package:flutter/material.dart';


class CustomContainerText extends StatelessWidget {
  final String text;
  final double? widthone;
  final double? widthtwo;
  final double? widththree;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  const CustomContainerText({
    super.key,
    required this.text,
  
    this.widthone,
    this.widthtwo,
    this.widththree, this.color1, this.color2, this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.only(start: screenWidth(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            text: text,
            styleType: TextStyleType.TITLE,
            fontWeight: FontWeight.normal,
          ),
          Row(
            children: [
              Container(
                height: screenWidth(70),
                width: widthone ?? screenWidth(3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: color1 ?? AppColors.blueColor,
                ),
              ),
              SizedBox(
                width: screenWidth(200),
              ),
              Container(
                height: screenWidth(70),
                width: widthtwo ?? screenWidth(11),
                decoration: BoxDecoration(
                  color: color2 ?? AppColors.orangeColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: screenWidth(200),
              ),
              Container(
                height: screenWidth(70),
                width: widththree ?? screenWidth(8.5),
                decoration: BoxDecoration(
                  color: color3 ?? AppColors.blueColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          )
        ]));
  }
}
