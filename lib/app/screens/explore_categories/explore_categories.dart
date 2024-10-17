import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/utils/categories.dart';
import 'package:home_glamour/widgets/categories_container.dart';
import 'package:home_glamour/widgets/custom_text.dart';

class ExploreCategoriesScreen extends StatelessWidget {
  const ExploreCategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Categories arguments = Get.arguments;

    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: colorSchemeLight.secondaryContainer,
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    arguments.iconPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: arguments.title,
                fontWeight: bold(),
              ),
            ],
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                60,
              ),
              child: TabBottomBuilder(categories: arguments)),
        ),
        body: TabBodyBuilder(categories: arguments),
      ),
    );
  }
}

class TabBottomBuilder extends StatelessWidget {
  final Categories categories;

  const TabBottomBuilder({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    if (categories == Categories.face) {
      return TabBar(
        tabs: [
          CustomText(
            text: 'Makeup',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
          CustomText(
            text: 'Facial',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
          CustomText(
            text: 'Threading',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
          CustomText(
            text: 'Eyelash Extension',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
        ],
      );
    } else if (categories == Categories.hair) {
      return TabBar(
        tabs: [
          CustomText(
            text: 'Hair Cut',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
          CustomText(
            text: 'Hair Styling',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
          CustomText(
            text: 'Wig Installment',
            maxLines: 1,
            color: colorSchemeLight.primary,
          ),
        ],
      );
    } else if (categories == Categories.nails) {
      return TabBar(tabs: [
        CustomText(
          text: 'Manicure',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Pedicure',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
      ]);
    } else if (categories == Categories.body) {
      return TabBar(tabs: [
        CustomText(
          text: 'Waxing',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Massage',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
      ]);
    } else if (categories == Categories.heena) {
      return TabBar(tabs: [
        CustomText(
          text: 'Bridal Heena',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Casual Heena',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
      ]);
    } else if (categories == Categories.photography) {
      return TabBar(tabs: [
        CustomText(
          text: 'Wedding',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'New Born',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Event',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
      ]);
    } else if (categories == Categories.eventDecor) {
      return TabBar(tabs: [
        CustomText(
          text: 'Wedding',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Birthdays',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Bridal Shower',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
      ]);
    } else if (categories == Categories.tailoring) {
      return TabBar(tabs: [
        CustomText(
          text: 'Alteration',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Fitting',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
        CustomText(
          text: 'Cutting',
          maxLines: 1,
          color: colorSchemeLight.primary,
        ),
      ]);
    }
    return const SizedBox.shrink();
  }
}

class TabBodyBuilder extends StatelessWidget {
  final Categories categories;

  const TabBodyBuilder({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    if (categories == Categories.face) {
      return CategoriesContainer();
    } else if (categories == Categories.hair) {
      return Center(
        child: CustomText(text: categories.title),
      );
    }
    return SizedBox();
  }
}
