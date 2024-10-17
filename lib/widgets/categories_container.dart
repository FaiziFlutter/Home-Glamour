import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/gen/assets.gen.dart';
import 'package:home_glamour/widgets/custom_text.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: colorSchemeLight.secondaryContainer),
        child: CustomPadding(
          top: 0,
          bottom: 0,
          child: Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Assets.images.hairStyling.image(
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Hair Styling',
                          fontWeight: bold(),
                          textAlign: TextAlign.start,
                          fontSize: AppTextSize.titleMediumFont,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CustomText(
                          text: 'Hair Styling',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          color: colorSchemeLight.outline.withOpacity(0.8),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CustomText(
                        right: 0,
                        top: 0,
                        left: 0,
                        bottom: 0,
                        text: "60 2 hours",
                        color: colorSchemeLight.primary,
                        fontWeight: bold(),
                      ),
                      Icon(
                        Icons.star,
                        color: const Color(0xffFDBE61),
                      ),
                      CustomText(left: 4, text: '4.8'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
