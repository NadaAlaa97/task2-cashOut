import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  final List<String> images = [
    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQSA2STVw8mPAZvxJgeaODIX8opUwJQRZrYFKyFuqAxjTg9JPuJ',
    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQSA2STVw8mPAZvxJgeaODIX8opUwJQRZrYFKyFuqAxjTg9JPuJ',
    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQSA2STVw8mPAZvxJgeaODIX8opUwJQRZrYFKyFuqAxjTg9JPuJ',
  ];

  int _currentPage = 0;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 5),
          child: CarouselSlider(
            items: images.map((e) => Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(e,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 150.spMin,
                ),
              ),
            )).toList(),

            options: CarouselOptions(
                height: 150.spMin,
                initialPage: 0,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (value, _) {
                  setState(() {
                    _currentPage = value;
                  });
                }
            ),
          ),
        ),
        buildCarouselIndicator()
      ],
    );
  }

  Widget buildCarouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < images.length; i++)
          Container(
            height: i == _currentPage ? 7 : 5,
            width: i == _currentPage ? 7 : 5,
            margin: EdgeInsets.all(4.spMin),
            decoration: BoxDecoration(
              color: i == _currentPage ? MyTheme.yellowColor : MyTheme.greyColor,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}
