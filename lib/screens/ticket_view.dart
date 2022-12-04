import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:flutter_app/utils/app_styles.dart';
import 'package:flutter_app/widgets/circle_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const CircleContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  print(
                                      'width is ${constraints.constrainWidth()}');
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white)),
                                            )),
                                  );
                                },
                              )),
                          Center(
                            child: Transform.rotate(
                              angle: 1.55,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const CircleContainer(),
                      Expanded(child: Container()),
                      Text(
                        'London',
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
