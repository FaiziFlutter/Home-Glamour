import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_glamour/app/models/category.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/gen/assets.gen.dart';
import 'package:home_glamour/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final availableCategories = [
    Category(Assets.icons.icFace.path, 'Face'),
    Category(Assets.icons.icHair.path, 'Hair'),
    Category(Assets.icons.icNail.path, 'Nail'),
    Category(Assets.icons.icBody.path, 'Body'),
    Category(Assets.icons.icHenna.path, 'Henna'),
    Category(Assets.icons.icPhotography.path, 'Photography'),
    Category(Assets.icons.icDecore.path, 'Event decor'),
    Category(Assets.icons.icTailoring.path, 'Tailoring'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomText(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 4,
                    text: 'Hello,',
                    fontFamily: GoogleFonts.grandHotel().fontFamily,
                    fontSize: AppTextSize.titleXLargeFont,
                  ),
                  CustomText(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    text: 'Maria',
                    fontSize: AppTextSize.titleLargeFont,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        color: colorSchemeLight.secondaryContainer,
                        child: Assets.icons.icNotification.svg()),
                  ),
                ],
              ),
              CustomText(
                text: "Let's Explore categories to find best services for you.",
                bottom: 15,
                textAlign: TextAlign.start,
                color: colorSchemeLight.outline.withOpacity(0.8),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: colorSchemeLight.primary,
                  ),
                  hintText: 'Search services near you',
                  hintStyle: TextStyle(
                    color: colorSchemeLight.primary,
                  ),
                  border: InputBorder.none,
                  filled: true,
                  fillColor:
                      colorSchemeLight.secondaryContainer.withOpacity(0.6),
                ),
              ),
              const CustomText(
                top: 15,
                text: 'Explore Categories',
                fontSize: AppTextSize.titleMediumFont,
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 15),
                  itemCount: availableCategories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                colorSchemeLight.secondaryContainer,
                            child: SvgPicture.asset(
                                availableCategories[index].icon),
                          ),
                          CustomText(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            text: availableCategories[index].name,
                            fontSize: AppTextSize.bodyxSmallFont,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              /////////////////////////////////////////

              Row(
                children: [
                  const CustomText(
                    text: 'Featured Services',
                    fontSize: AppTextSize.titleMediumFont,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      child: CustomText(
                        text: 'See All',
                        color: colorSchemeLight.primary,
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: Assets.images.featured.image().image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: colorSchemeLight.secondaryContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                  top: 6, left: 12, text: 'Cleansing Facial'),
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: const Color(0xffFDBE61),
                                ),
                              ),
                              CustomText(left: 4, text: '4.8'),
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                left: 12,
                                text: "Jane's spa",
                                color: colorSchemeLight.outline,
                              ),
                              const Spacer(),
                              CustomText(
                                text: "60 2 hours",
                                color: colorSchemeLight.primary,
                                fontWeight: bold(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //***************** Services Near you **********************

              Row(
                children: [
                  const CustomText(
                    top: 15,
                    bottom: 0,
                    text: 'Services Near You',
                    fontSize: AppTextSize.titleMediumFont,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      child: CustomText(
                        bottom: 0,
                        top: 15,
                        text: 'See All',
                        color: colorSchemeLight.primary,
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: Assets.images.servicesnear.image().image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: colorSchemeLight.secondaryContainer,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                  top: 6, left: 12, text: 'Engagement Decor'),
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xffFDBE61),
                                ),
                              ),
                              CustomText(left: 4, text: '4.8'),
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                left: 12,
                                text: "Julie's Decor",
                                color: colorSchemeLight.outline,
                              ),
                              const Spacer(),
                              CustomText(
                                text: "60 2 hours",
                                color: colorSchemeLight.primary,
                                fontWeight: bold(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
