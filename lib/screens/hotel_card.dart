import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:flutter_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
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
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/logo-airplane.png'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            'Open Space',
            style: Styles.headlineStyle2.copyWith(color: Styles.copyColor),
          ),
          const Gap(10),
          Text(
            'London',
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            '\$40/night',
            style: Styles.headlineStyle.copyWith(color: Styles.copyColor),
          ),
        ],
      ),
    );
  }
}
