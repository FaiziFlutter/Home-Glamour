import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/widgets/custom_button.dart';
import '../../const/global_var.dart';
import '../../const/text_size.dart';
import '../../widgets/custom_text.dart';

class HairDo extends StatefulWidget {
  const HairDo({super.key});

  @override
  State<HairDo> createState() => _HairDoState();
}

class _HairDoState extends State<HairDo> {
  int rate = 4;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[
                Image.asset(
                  'assets/images/Rectangle 60.png',
                  fit: BoxFit.cover,
                  height: appheight(context) * 0.6,
                  width: appWidth(context),
                ),
                CustomPadding(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorScheme(context).secondaryContainer.withOpacity(0.6),
                        ),
                          child: IconButton(
                            icon:Image.asset(
                                'assets/icons/arrow-left.png',  color: colorScheme(context).onPrimaryContainer),
                            onPressed: () {},
                          ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorScheme(context).secondaryContainer.withOpacity(0.6),
                        ),
                          child: IconButton(
                            icon: Image.asset(
                                'assets/icons/share.png', color: colorScheme(context).onPrimaryContainer),
                            onPressed: () {},
                          ),
                      ),
                    ],
                  ),
                )
              ]
            ),
            CustomPadding(
              child: Column(
               children: [
                  Row(
                  children: [
                  CustomText(text: 'Party Hair Style',
                  fontSize: AppTextSize.titleLargeFont,
                  color: colorScheme(context).onPrimaryContainer,
                  letterSpacing: 1,
                  fontFamily: poppins(),),
                  Spacer(),
                  Row(
                  children: List.generate(5, (index) => Icon(
                  index < rate ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 15,
                  )),
                  ) ,
                  CustomText(text: '4.0'),]
                  ),
                  Row(
                  children: [
                  CustomText(text: "Jenny's Hair Salon",
                  color: colorScheme(context).onPrimaryContainer.withOpacity(0.6),
                  fontSize: AppTextSize.titleMediumFont,
                  left: 2,
                    fontWeight: FontWeight.w500,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){},
                    child: CustomText(text: "2 km away",
                      color: colorScheme(context).tertiary,),
                  ),

                  ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomText(text: "\$ 60 " , color: colorScheme(context).tertiary,
                        fontSize: AppTextSize.titleMediumFont,
                        letterSpacing: 2,
                        fontFamily: poppins(),
                          fontWeight: FontWeight.w500,),
                      ),
                      SizedBox(width:13),
                      InkWell(
                        onTap: (){},
                        child: CustomText(text: " 2 Hours " , color: colorScheme(context).tertiary,
                          fontSize: AppTextSize.titleMediumFont,
                          letterSpacing: 2,
                          fontFamily: poppins(), fontWeight: FontWeight.w500,),
                      ),
                    ],
                  ),
                 SizedBox(height:13),
                  Row(
                  children: [
                  Container(
                    height: 40,
                     width: 40,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme(context).secondaryContainer,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                  icon: Image.asset(
                  'assets/icons/call.png', color: colorScheme(context).onPrimaryContainer),
                  onPressed: () {},
                  ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 40,
                    width: 40,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme(context).secondaryContainer,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                  icon: Image.asset(
                      'assets/icons/messages-3.png', color: colorScheme(context).onPrimaryContainer),
                  onPressed: () {},
                  ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme(context).secondaryContainer,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                  icon: Image.asset(
                      'assets/icons/favourite.png', color: colorScheme(context).onPrimaryContainer),
                  onPressed: () {},
                  ),
                  ),
                  ],
                  ),
                 SizedBox(height:13),
                 Row(
                   children: [
                     CustomText(text: 'Booking Method',
                       fontSize: AppTextSize.titleSmallFont,
                       color: colorScheme(context).onPrimaryContainer,
                       letterSpacing: 1,
                       fontFamily: poppins(),),
                   ],
                 ),
                Row(
                  children: [
                    CustomText(text: 'Booking through Slots',
                      fontSize: AppTextSize.bodyMediumFont,
                      color: colorScheme(context).onPrimaryContainer.withOpacity(0.6),
                      letterSpacing: 1,
                      fontFamily: poppins(),  fontWeight: FontWeight.w500,),
                  ],
                ),
                 SizedBox(height:13),
                 Row(
                   children: [
                     CustomText(text: 'About Service',
                       fontSize: AppTextSize.titleSmallFont,
                       color: colorScheme(context).onPrimaryContainer,
                       letterSpacing: 1,
                       fontFamily: poppins(),),
                   ],
                 ),
                 Column(
                   children: [
                     RichText(
                         textAlign: TextAlign.justify,
                         text: TextSpan(
                       children: [
                         TextSpan(
                           text: 'Home Glamour is your ultimate mobile application for transforming your living space into a stylish and functional haven. Our app offers a wide range of services, including personalized interior design consultations, virtual room makeovers, and access to a curated selection of home decor products. Whether you’re looking to refresh a single room or undertake a complete home renovation, our expert designers are here to guide you through every step of the process. With intuitive features, 3D visualization tools, and a seamless shopping experience, Home Glamour empowers you to create a space that reflects your unique taste and lifestyle—all from the comfort of your mobile device.',
                             style: TextStyle(
                           color: colorScheme(context).onPrimaryContainer.withOpacity(0.6),
                           wordSpacing: 1,
                       overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w500, //textAlign: TextAlign.justify,
                           fontSize: AppTextSize.bodyMediumFont,
                         fontFamily: poppins(),
                         )
                         ),
                         TextSpan(
                           text: ' See more.' , style: TextStyle(
                           color: colorScheme(context).tertiary,
                           wordSpacing: 1,
                           overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w500, //textAlign: TextAlign.justify,
                           fontSize: AppTextSize.bodyMediumFont,
                           fontFamily: poppins(),
                         ),
                           recognizer: TapGestureRecognizer()
                             ..onTap = (){},
                         ),


                       ]
                     ))

                   ],
                 ),
                 SizedBox(height:40),
                 CustomButton(text: "Book an Appointment", fontWeight:FontWeight.w600,
                   width: double.infinity,color: colorScheme(context).tertiary,
                   onTap: () {},
                 )
                  ],
                  ),
            ),

          ],
              ),
      ));
  }
}