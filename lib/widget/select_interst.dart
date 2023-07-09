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
  bool content=true;
  double heightOfBottomSheet=732.h;

  changeInterestValue(bool value){


  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 21.w, right: 21.w, top: 24.h),
          child: SizedBox(
            height: 68.h,
            width: 333.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  flag ? 'Choose Your Level' : 'Choose your interests',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  flag
                      ? 'You are almost done. Select your level!'
                      : 'You are almost done. Select at least 5 topics so \n we can show what you might like.',
                  style: TextStyle(color: Colors.grey),
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
            height: 510.h,
            width: 336.w,
            child: !flag
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        InterestsElement(title: 'Flutter',onChanged: (value){
                          changeInterestValue(value!);
                        },),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'Ui/Ux',onChanged: (value){
                          changeInterestValue(value!);
                        },),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'Digital Marketing',onChanged: (value){
                          changeInterestValue(value!);
                        },),
                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: '.Net',onChanged: (value){
                          changeInterestValue(value!);
                        },),

                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'AWS',onChanged: (value){
                          changeInterestValue(value!);
                        },),

                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'React',onChanged: (value){
                          changeInterestValue(value!);
                        },),

                        SizedBox(
                          height: 12.h,
                        ),
                        InterestsElement(title: 'Node.js',onChanged: (value){
                          changeInterestValue(value!);
                        },),

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
            onPressed: () async {
              setState(()  async{
                if (!flag) {
                  flag = !flag;

                } else {
                  //TODO:: to all done
                  await context.read<AuthProvider>().saveIntresets();
                  if(!mounted) return;
                  Navigator.pop(context);
                  openBottomSheet(context, AllDone());


                }
              });
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  side: const BorderSide(color: Colors.black)),
              backgroundColor: Colors.black,
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
      showDragHandle: true,
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

