import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/widget/article_card.dart';
import 'package:graduation/widget/home_content_follow_card.dart';
import 'package:provider/provider.dart';

class Activites extends StatefulWidget {
  const Activites({Key? key}) : super(key: key);

  @override
  State<Activites> createState() => _ActivitesState();
}

class _ActivitesState extends State<Activites> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16.h,
        ),
        SvgPicture.asset('assets/icons/statistics.svg'),
        SizedBox(
          height: 16.h,
        ),
        Text(
          'Activites list',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        Provider.of<FireStoreProvider>(context).articles.isEmpty?Container():
        ArticleCard(
            article: Provider.of<FireStoreProvider>(context).articles[0]),
        Provider.of<FireStoreProvider>(context).posts.isEmpty? Container():

        HomeFollowCard(
            post: Provider.of<FireStoreProvider>(context).posts[0]),
      ],
    );
  }
}
