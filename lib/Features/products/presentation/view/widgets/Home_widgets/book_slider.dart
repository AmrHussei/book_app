import 'package:bookly/core/utils/assets_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSlider extends StatelessWidget {
  const BookSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 15,
      options: CarouselOptions(
        height: 224.h,
        aspectRatio: 16 / 9,
        viewportFraction: 0.4,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        disableCenter: true,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return const BuildItem();
      },
    );
  }
}

class BuildItem extends StatelessWidget {
  const BuildItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.h),
            color: Colors.red,
            image: const DecorationImage(
                image: AssetImage(
                  AssetsData.book,
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
