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
      resizeToAvoidBottomInset: false,
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
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins'
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            RecentlySearchCard(name: 'William Robinson',userName: '@william',),
            SizedBox(
              height: 16.h,
            ),
            RecentlySearchCard(name: 'James Wright',userName: '@james',),
            SizedBox(
              height: 16.h,
            ),
            RecentlySearchCard(name: 'Harper Wilson',userName: '@harper',),
            SizedBox(
              height: 31.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Conversation',
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ConversationSearchCard(str1: '📈 Sales',str2:'sales strategies, sales skills, sales training',str3: '💻 Coding',str4: 'coding resources, coding tips.',),
            SizedBox(height: 9.h,),
            ConversationSearchCard(str1: '🖥️ Softwore',str2:'software design, software testing ',str3: '💡 Knowledge',str4: 'knowledge, information, research.'),
            SizedBox(height: 9.h,),
            ConversationSearchCard(str1: '👩🏻‍💻 Design',str2:'design, graphic design, web design',str3: ' 🔥 Trending',str4: 'artificial intelligence, machine learning'),
          ],
        ),
      ),
    );
  }
}
