import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 75.w,
            height: 16.h,
          ),
          IconButton(
            onPressed: (() {}),
            icon: Image.asset(
              AssetsData.search,
              height: 25.h,
              width: 25.w,
            ),
          )
        ],
      ),
    );
  }
}
