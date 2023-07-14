import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/sub_pages/article_page.dart';
import 'package:graduation/widget/article_card.dart';
import 'package:graduation/widget/article_publish.dart';
import 'package:provider/provider.dart';

class ArticleContent extends StatefulWidget {
  const ArticleContent({Key? key}) : super(key: key);

  @override
  State<ArticleContent> createState() => _ArticleContentState();
}

class _ArticleContentState extends State<ArticleContent> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FireStoreProvider>(
        builder: (context, fireStoreProvider, child) {
      return ListView(
        children: [
          Row(
            children: [
              Text(
                'Articles',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  openBottomSheet(context, ArticlePublish());
                },
                child: SvgPicture.asset('assets/icons/plus.svg'),
              ),
              SizedBox(
                width: 6.w,
              ),
              SvgPicture.asset('assets/icons/search.svg'),
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemCount: fireStoreProvider.articles.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ArticlePage(
                                article: fireStoreProvider.articles[index],
                              )));
                  // AppRouter.NavigateToWidget(ProductsScreen(
                  //     fireStoreProvider.categories[index].id!));
                },
                child: ArticleCard(article: fireStoreProvider.articles[index]),
              );
            },
          ),
        ],
      );
    });
  }

  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: 361.h,
            width: 375.w,
            child: widget,
          ),
        );
      },
    );
  }
}
