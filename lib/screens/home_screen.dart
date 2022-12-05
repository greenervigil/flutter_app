import 'package:flutter/material.dart';
import 'package:flutter_app/screens/hotel_card.dart';
import 'package:flutter_app/screens/ticket_view.dart';
import 'package:flutter_app/utils/app_info_list.dart';
import 'package:flutter_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Morning!',
                            style: Styles.headlineStyle3,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            'Flights',
                            style: Styles.headlineStyle,
                          ),
                        ],
                      ),
                      Container(
                        width: AppLayout.getWidth(50),
                        height: AppLayout.getHeight(50),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(10)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/logo-airplane.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Color(0xFFbfc205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headlineStyle4,
                        ),
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headlineStyle2,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View All',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList
                    .map((ticket) => TicketView(ticket: ticket))
                    .toList(),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotels',
                    style: Styles.headlineStyle2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children:
                    hotelList.map((hotel) => HotelCard(hotel: hotel)).toList(),
              ),
            ),
          ],
        ));
  }
}
