import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final provider = context.read<FireStoreProvider>();
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
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
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Ahmad Ali',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationScreen()));
                    },
                    icon: SvgPicture.asset('assets/icons/notifi.svg')),
                SizedBox(
                  width: 6.w,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                    },
                    icon: SvgPicture.asset('assets/icons/search.svg')),
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: 29.h,
                ),
                Container(
                  height: 142.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(255, 198, 70, 0.8),
                        Color.fromRGBO(185, 152, 79, 0.8)
                      ],
                      radius: 3,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                    child: Stack(
                      children: [
                        const Text(
                          'If You Have Experience Of 5+ \nYears in Your Field, Become a\nMentor With Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              wordSpacing: 4,
                              height: 1.5),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 17.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        fixedSize: Size(108.w, 34.h),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.r))),
                                    onPressed: () {},
                                    child: const Text(
                                      'Get Started',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: provider.posts.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () async {
                        await provider.getAllComments(provider.posts[index].postId!);
                        openBottomSheet(context,QuestionSheet(post: provider.posts[index]));
                      },
                      child: HomeFollowCard(post: provider.posts[index]),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
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
          height: 550.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }

}
