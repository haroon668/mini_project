import 'package:flutter/material.dart';

class SliderAppscreen extends StatefulWidget {
  const SliderAppscreen({super.key});

  @override
  State<SliderAppscreen> createState() => _SliderAppscreenState();
}

class _SliderAppscreenState extends State<SliderAppscreen> {
  List<String> dryfruitsimages = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.amber,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(30),
                width: double.infinity,
                height: 180,
                child: const Center(
                  child: Text(
                    "Your holiday shopping delivered to Screen one ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                padding: const EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                height: 60,
                child: const Text(
                  "There is something for everyone to enjoy with Sweet shop favourite Screen 1",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(40),
                      child: Image.asset(dryfruitsimages[0]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
