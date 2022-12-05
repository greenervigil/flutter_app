import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:flutter_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['place'],
            style: Styles.headlineStyle2.copyWith(color: Styles.copyColor),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['destination'],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            '\$${hotel["price"]}/night',
            style: Styles.headlineStyle.copyWith(color: Styles.copyColor),
          ),
        ],
      ),
    );
  }
}
