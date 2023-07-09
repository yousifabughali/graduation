import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/conversation_search_card.dart';
import 'package:graduation/widget/recently_search_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 70,
        titleSpacing: 0,
        leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search_back.svg',
              height: 40.h,
              width: 40.w,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: SearchBar(
          elevation: MaterialStatePropertyAll(0),
          constraints: BoxConstraints(maxWidth: 243.w, maxHeight: 40.h),
          leading: SvgPicture.asset('assets/icons/search_leading.svg'),
          backgroundColor: MaterialStateProperty.all(
            Color.fromRGBO(244, 244, 244, 1),
          ),
          hintText: 'Search',
          hintStyle: MaterialStateProperty.all(
            TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1.2.h,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 21.h),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recently',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            RecentlySearchCard(),
            SizedBox(
              height: 16.h,
            ),
            RecentlySearchCard(),
            SizedBox(
              height: 16.h,
            ),
            RecentlySearchCard(),
            SizedBox(
              height: 31.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Conversation',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ConversationSearchCard(str1: 'Sales',icon1: Icons.stacked_line_chart,str2: 'Coding',icon2: Icons.laptop_chromebook,),
            SizedBox(height: 9.h,),
            ConversationSearchCard(str2: 'Softwore',icon2: Icons.desktop_mac_outlined,str1: 'Knowledge',icon1: Icons.lightbulb,),
            SizedBox(height: 9.h,),
            ConversationSearchCard(str2: 'Design',icon2: Icons.design_services_outlined,str1: 'Trending',icon1: Icons.local_fire_department_outlined,),
          ],
        ),
      ),
    );
  }
}
