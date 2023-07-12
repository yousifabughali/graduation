import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/home_screens/article_content.dart';
import 'package:graduation/home_screens/home_content.dart';
import 'package:graduation/home_screens/profile_content.dart';
import 'package:graduation/home_screens/room_content.dart';
import 'package:graduation/mentor/public_mentor_profile.dart';
import 'package:graduation/widget/home_content_follow_card.dart';
import 'package:graduation/widget/post_question.dart';
import 'package:graduation/widget/posted.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> floating = <Widget>[
    Text('Comunnity'),
    Text('Following'),
  ];
  List<bool> _isSelected = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
          body: Padding(
            padding: EdgeInsets.only(top: 16.0.h, left: 16.w, right: 16.w),
            child: index == 0 ? HomeScreenContent() : index == 1
                ? ArticleContent()
                : index == 3 ? RoomContent() : index == 4
                ? ProfileContent()
                :Container(),
          ),
          bottomNavigationBar: Container(
            clipBehavior: Clip.antiAlias,
            height: 90.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r)),
            ),
            child: BottomNavigationBar(
                elevation: 0,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                fixedColor: Colors.black,
                unselectedItemColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                currentIndex: index,
                onTap: (int value) {
                  setState(() {
                    if(value==2){
                      openBottomSheet(context, PublishQuesion());
                    }else{
                      index = value;
                    }
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/home.svg'),
                    label: 'Home',
                    activeIcon: SvgPicture.asset(
                        'assets/icons/selectedHome.svg'),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/article.svg'),
                    label: 'Articles',
                    activeIcon:
                    SvgPicture.asset('assets/icons/selectedArticle.svg'),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/add.svg',
                        theme: SvgTheme(currentColor: Colors.black)),
                    label: 'Add',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/chatting.svg'),
                    label: 'Rooms',
                    activeIcon: SvgPicture.asset(
                        'assets/icons/selectedRoom.svg'),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/user.svg'),
                    label: 'Profile',
                    activeIcon:
                    SvgPicture.asset('assets/icons/selectedProfile.svg'),
                  ),
                ]),
          ),
          floatingActionButton: index == 0
              ? Container(
            height: 38.h,
            width: 162.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white,
            ),
            child: Center(
              child: ToggleButtons(
                isSelected: _isSelected,
                children: floating,
                onPressed: (int ind) {
                  setState(() {
                    for (int i = 0; i < _isSelected.length; i++) {
                      _isSelected[i] = i == ind;
                    }
                  });
                },
                fillColor: Color.fromRGBO(242, 179, 37, 0.6),
                selectedColor: Colors.black,
                constraints: BoxConstraints(
                    minHeight: 26.h,
                    minWidth: 79.w
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                renderBorder: false,
              ),
            ),
          )
              : Container(),
          floatingActionButtonLocation: FloatingActionButtonLocation
              .centerFloat,
        ),
      ),
    );
  }

  openBottomSheet(BuildContext context, Widget widget)  {
    return  showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,


      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (context) {
        return SizedBox(
          height: 630.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
