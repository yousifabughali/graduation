import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SelectLevel extends StatefulWidget {
  SelectLevel({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectLevel> createState() => _SelectLevelState();
}

class _SelectLevelState extends State<SelectLevel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Intermediate'),
            Spacer(),
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Checkbox(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  value: true, onChanged: (_) {}),
            ),
          ],
        ),
        SizedBox(height: 12.h,),
        Row(
          children: [
            Text('Beginner'),
            Spacer(),
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Checkbox(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  value: true, onChanged: (_) {}),
            ),
          ],
        ),
        SizedBox(height: 12.h,),
        Row(
          children: [
            Text('Senior'),
            Spacer(),
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Checkbox(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  value: true, onChanged: (_) {}),
            ),
          ],
        ),
        SizedBox(height: 12.h,),
        Row(
          children: [
            Text('Design'),
            Spacer(),
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Checkbox(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  value: true, onChanged: (_) {}),
            ),
          ],
        ),
        SizedBox(height: 12.h,),
        Row(
          children: [
            Text('Design'),
            Spacer(),
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Checkbox(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  value: true, onChanged: (_) {}),
            ),
          ],
        ),
        SizedBox(height: 12.h,),
      ],
    );
  }
}

// Padding(
//   padding:  EdgeInsets.only(left: 25.w,right: 25.w,top: 17.h,bottom: 17.h),
//   child: ElevatedButton(
//     onPressed: () {
//
//     },
//     child: Text(
//       'Finish',
//       style: TextStyle(color: Colors.white),
//     ),
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.r),
//           side: BorderSide(color: Colors.black)),
//       backgroundColor: Colors.black,
//       minimumSize: Size(325.w, 56.h),
//     ),
//   ),
// ),
