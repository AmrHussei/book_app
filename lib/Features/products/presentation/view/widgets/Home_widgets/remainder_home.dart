import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RemainderHome extends StatelessWidget {
  const RemainderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best seller',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 450.h,
            child: ListView.separated(
              itemBuilder: ((context, index) => const ItemBuilder()),
              separatorBuilder: ((context, index) => SizedBox(height: 10.h)),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 65.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              image: const DecorationImage(
                  image: AssetImage(AssetsData.book), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'name of the free books ',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                'name of writer  ',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '50 \$',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 180.w,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w900),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
