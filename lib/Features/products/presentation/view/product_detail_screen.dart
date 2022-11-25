import 'package:bookly/Features/products/presentation/view/widgets/product_widget/center_book.dart';
import 'package:bookly/Features/products/presentation/view/widgets/product_widget/header_detail.dart';
import 'package:bookly/Features/products/presentation/view/widgets/product_widget/product_detail_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.h,
            ),
            HeaderOfdetailScreen(),
            SizedBox(
              height: 15.h,
            ),
            CenterBook(),
            SizedBox(
              height: 30.h,
            ),
            ProductDetailSlider()
          ],
        ),
      ),
    );
  }
}
