import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/auth_screens/last_Screen.dart';
import 'package:graduation/auth_screens/sign_in.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/widget/all_done.dart';
import 'package:graduation/widget/bottom_sheet.dart';
import 'package:graduation/widget/interest_element.dart';
import 'package:graduation/widget/select_level.dart';
import 'package:provider/provider.dart';

class SelectYourIntrest extends StatefulWidget {
  // Function? callback;

  SelectYourIntrest({
    // required callback,
    Key? key,
  }) : super(key: key);

  @override
  State<SelectYourIntrest> createState() => _SelectYourIntrestState();
}

class _SelectYourIntrestState extends State<SelectYourIntrest> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 21.w, right: 21.w, top: 24.h,bottom: 12.h),
          child: SizedBox(
            width: 333.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  flag ? 'Choose Your Level' : 'Choose your interests',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: const Color.fromRGBO(36, 36, 36, 1)),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  flag
                      ? 'You are almost done. Select your level!'
                      : 'You are almost done. Select your interest, so we can show what you might like.',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    height: 1.5.h,
                    color: const Color.fromRGBO(147, 147, 147, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          indent: 19.w,
          endIndent: 20.w,
          thickness: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 18.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 19.w, right: 20.w),
          child: SizedBox(
            height: 500.h,
            width: 336.w,
            child: !flag
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        InterestsElement(
                          title: 'Flutter',
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(
                          title: 'Ui/Ux',
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'Digital Marketing'),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: '.Net'),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(
                          title: 'AWS',
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'React'),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'Node.js'),
                        SizedBox(
                          height: 12.h,
                        ),
                      ],
                    ),
                  )
                : SelectLevel(),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 25.w, right: 25.w, top: 17.h, bottom: 17.h),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (!flag) {
                  flag = !flag;
                } else {
                  //TODO:: to all done
                  context.read<AuthProvider>().saveIntresets();

                  // if(!mounted) return;
                  Navigator.pop(context);
                  openBottomSheet(context, AllDone());
                }
              });
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  side: const BorderSide(color: Color.fromRGBO(36, 36, 36, 1),width: 0.6)),
              backgroundColor: Color.fromRGBO(36, 36, 36, 1),
              minimumSize: Size(325.w, 56.h),
            ),
            child: Text(
              flag ? 'Finish' : 'Follow Your Interests',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 443.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
