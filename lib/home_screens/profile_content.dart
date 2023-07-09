import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/mentor/sub_divisioms/activites.dart';
import 'package:graduation/mentor/sub_divisioms/settings.dart';
import 'package:graduation/sub_pages/profile_settings.dart';

class ProfileContent extends StatefulWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: SingleChildScrollView(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/mentor_user_image.png',
                  height: 80.h,
                  width: 80.w,
                ),
                SizedBox(
                  width: 16.65.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmad Ali',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '@ahmadali',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSettings()));
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/settings.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Row(
              children: [
                Text(
                  'Followers',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  '35,000',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Following',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  '10,000',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
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
              height: 4.h,
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
              height: 20.h,
            ),
            Container(
              height: 62.h,
              width: 375.w,
              color: Color.fromRGBO(252, 252, 252, 1),
              child: const TabBar(
                labelColor: Colors.orange,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Activites',
                  ),
                  Tab(
                    text: 'Bookmark',
                  ),
                  Tab(
                    text: 'Settings',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: [
                  Activites(),
                  Center(child: Text('There is Nothing here yet!')),
                  Settings(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
