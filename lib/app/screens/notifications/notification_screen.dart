import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';

import '../../../const/global_var.dart';
import '../../../widgets/custom_text.dart';
import '../../models/listview_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    List<ListModel> items = [
      ListModel(
        image: 'assets/images/Ellipse 24.png',
        title: 'You have new unread messege from Rubi Salon',
        halftitle: 'Rubi Salon',
        highlightcolor: colorScheme(context).tertiary,
        time: '3:10AM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24.png',
        title: 'You have booking for Rubi Salon ',
        halftitle: 'Rubi Salon',
        highlightcolor: colorScheme(context).tertiary,
        time: '3:25AM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24 (1).png',
        title:
            'Your booking for bridal shower decor is active now.Waiting for the seller to start service.',
        halftitle: 'start service',
        highlightcolor: colorScheme(context).tertiary,
        time: '11:10PM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24 (2).png',
        title: 'You have new unread messege from Rubi Salon',
        halftitle: 'Rubi Salon',
        highlightcolor: colorScheme(context).tertiary,
        time: '12:25AM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24.png',
        title: 'You have new unread messege from Rubi Salon',
        halftitle: 'Rubi Salon',
        highlightcolor: colorScheme(context).tertiary,
        time: '3:10AM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24.png',
        title:
            'Your booking with Dena Decor is about to be cancelled automatically, message them now or cancel booking.',
        halftitle: 'Cancel booking',
        highlightcolor: colorScheme(context).tertiary,
        time: '3:25AM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24 (1).png',
        title: 'You have new unread messege from Rubi Salon',
        halftitle: 'Rubi Salon',
        highlightcolor: colorScheme(context).tertiary,
        time: '11:10PM',
      ),
      ListModel(
        image: 'assets/images/Ellipse 24 (2).png',
        title: 'You have new unread messege from Rubi Salon',
        halftitle: 'Rubi Salon',
        highlightcolor: colorScheme(context).tertiary,
        time: '12:25AM',
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(1), // Adjust the height as needed
            child: Container(
              color: Colors.grey, // Color of the bottom border
              height: 0.5, // Thickness of the border
            ),
          ),
          title: CustomText(
            text: 'Notifications',
          ),
        ),
        body: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return CustomPadding(
                top: 0,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: item.time,
                          color: colorScheme(context).tertiary,
                        ),
                      ],
                    ),
                    // Title from model
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(item.image), // Image from model
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 9,
                        ), //item.title,
                        Expanded(
                            child: InkWell(
                          onTap: () {},
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: poppins(),
                                    color: colorScheme(context)
                                        .onSecondaryContainer),
                                children: [
                                  TextSpan(
                                      text: item.title.replaceAll(
                                          item.halftitle,
                                          '')), // Non-highlighted part
                                  TextSpan(
                                    text: item.halftitle,
                                    style: TextStyle(
                                        color: item
                                            .highlightcolor), // Change color for highlighted part
                                  ),
                                ]),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
