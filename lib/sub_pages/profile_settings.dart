import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/text_field_widget.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 60,
        leading: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 19.h),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/icons/a1.png'),
                      Padding(
                        padding: EdgeInsets.only(left: 45.w, top: 35.h),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/oval.svg',
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.5.w, top: 7.h),
                              child:
                                  SvgPicture.asset('assets/icons/camera.svg'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Ahmad Ali',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '@ahmadali',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldInSetting(title: 'Name',),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextFieldInSetting(title: 'Bio',),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Personal info',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.sp),
                    ),
                    SizedBox(height: 12.h,),
                    TextFieldInSetting(title: 'Email',),
                    SizedBox(height: 16.h,),
                    TextFieldInSetting(title: 'Phone Number',),
                    SizedBox(height: 16.h,),
                    TextFieldInSetting(title: 'Job Title',),
                    SizedBox(height: 16.h,),
                    TextFieldInSetting(title: 'Location',),
                    SizedBox(height: 16.h,),
                    TextFieldInSetting(title: 'Personal Website',),
                    SizedBox(height: 16.h,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                        backgroundColor: Colors.black,
                        minimumSize: Size(325.w, 56.h),
                      ),
                    ),
                    SizedBox(height: 50.h,),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
