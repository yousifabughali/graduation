import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/sub_pages/notification_screen.dart';
import 'package:graduation/sub_pages/search_page.dart';
import 'package:graduation/widget/home_content_follow_card.dart';
import 'package:graduation/widget/question_sheet.dart';
import 'package:provider/provider.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FireStoreProvider>(
        builder: (context, fireStoreProvider, child) {
      return Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  // SvgPicture.asset('assets/icons/Path.svg',color: Colors.black,height: 40.h,width: 40.w,),
                  Image.asset(
                    'assets/icons/a1.png',
                    height: 40.h,
                    width: 40.w,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          color: const Color.fromRGBO(142, 142, 149, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          height: 1.5.h,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        Provider.of<AuthProvider>(context).nameController.text,
                        style: TextStyle(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      AppRouter.NavigateToWidget(const NotificationScreen());
                    },
                    child: SvgPicture.asset(
                      'assets/icons/not.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),

                  SizedBox(
                    width: 6.w,
                  ),
                  InkWell(
                    onTap: () {
                      AppRouter.NavigateToWidget(const SearchPage());
                    },
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 29.h,
                  ),
                  Container(
                    height: 142.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/featured_card.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Stack(
                        children: [
                          // SvgPicture.asset('assets/icons/featured_card.svg',height: 142.h,width: 335.w,fit: BoxFit.cover),
                          SizedBox(
                            width: 295.w,
                            child: Text(
                              'If You Have Experience Of 5+ Years in Your Field, Become A Mentor With Us',
                              style: TextStyle(
                                letterSpacing: 1,
                                color: const Color.fromRGBO(36, 36, 36, 1),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 16.sp,
                                height: 1.8.h,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  const Spacer(),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(36, 36, 36, 1),
                                      fixedSize: Size(113.w, 34.h),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Get Started',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: fireStoreProvider.posts.length,
                    itemBuilder: (context, index) {
                      return HomeFollowCard(
                          post: fireStoreProvider.posts[index]);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
