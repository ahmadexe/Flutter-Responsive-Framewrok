import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 700,
                width: 700,
                color: Colors.red,
                child: Image.asset('assets/images/rnd1.jpg', fit: BoxFit.fill),
              ),
              Container(
                height: 700,
                width: 700,
                color: Colors.blue,
                child: Image.asset(
                  'assets/images/rnd2.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 700,
                width: 700,
                color: Colors.yellow,
                child: Image.asset('assets/images/rnd3.jpg', fit: BoxFit.fill),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
