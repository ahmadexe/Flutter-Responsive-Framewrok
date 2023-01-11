import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ScrollController controller1 = ScrollController();
  final ScrollController controller2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        controller: controller2,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: controller2,
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            controller: controller1,
            child: Center(
              child: ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowPadding: const EdgeInsets.all(16),
                columnPadding: const EdgeInsets.all(16),
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    child: Container(
                      height: 400,
                      width: 400,
                      color: Colors.red,
                      child: Image.asset('assets/images/rnd1.jpg',
                          fit: BoxFit.fill),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      height: 400,
                      width: 400,
                      color: Colors.blue,
                      child: Image.asset(
                        'assets/images/rnd2.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      height: 400,
                      width: 400,
                      color: Colors.yellow,
                      child: Image.asset('assets/images/rnd3.jpg',
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
