import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CenterBook extends StatelessWidget {
  const CenterBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
        height: 300.h,
        width: 162.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQG_gRF7HFQ4ww/profile-displayphoto-shrink_800_800/0/1662793286706?e=1674691200&v=beta&t=R3MsOldzkQZkNfye8eey-1YiH_9Cq66syBrBFt_lhnk'),
              fit: BoxFit.cover),
        ),
      ),
      SizedBox(
        height: 30.h,
      ),
      SizedBox(
        width: 220.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'name of the free books ',
              style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                  height: 1.5),
            ),
            Text(
              'name of writer  ',
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  height: 1.5),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_rate_rounded,
                  color: Colors.amber,
                ),
                Text(
                  '4.8',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900),
                )
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 25.h,
      ),
      MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.sp)),
        onPressed: () {},
        color: MyColors.ButtonColor,
        height: 50.h,
        minWidth: 150.w,
        child: Text(
          'Free preview',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
    ]);
  }
}
