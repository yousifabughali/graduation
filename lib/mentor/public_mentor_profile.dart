import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/widget/article_card.dart';
import 'package:graduation/widget/home_content_follow_card.dart';

class MentorPublicProfile extends StatefulWidget {
  const MentorPublicProfile({Key? key}) : super(key: key);

  @override
  State<MentorPublicProfile> createState() => _MentorPublicProfileState();
}

class _MentorPublicProfileState extends State<MentorPublicProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            child: InkWell(
              onTap: (){
                AppRouter.popRouter();
              },
              child: SvgPicture.asset(
                'assets/icons/arrow_back.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              child: SvgPicture.asset(
                'assets/icons/notification.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w, top: 10.h),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only( left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/mentor_user_image.png',
                      height: 80.h,
                      width: 80.w,
                    ),
                    SizedBox(
                      width: 16.5,
                    ),
                    Column(
                      children: [
                        Text(
                          'Ahmad Ali',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '@ahmadali',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(72.w, 32.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                      onPressed: () {},
                      child: const Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 33.h,
                ),
                Row(
                  children: [
                    Text(
                      'About me',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'see more',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 54.h,
                  width: 335.w,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(
                      'Experienced UX mentor with a passion for helping\ndesigners and product teams create user-centered\nsolutions.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.4.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  height: 60.h,
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            'Following',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4.h,),
                          Text(
                            '35,500',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            'Followers',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4.h,),
                          Text(
                            '10,000',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rate',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4.h,),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/Star.svg'),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 17.h,),
                Text('Activites',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h,),
                // ArticleCard(),
                SizedBox(height: 16.h,),
                // HomeFollowCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
