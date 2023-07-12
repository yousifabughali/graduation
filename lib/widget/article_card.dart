
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/model/article.dart';
import 'package:graduation/sub_pages/article_page.dart';

class ArticleCard extends StatelessWidget {
  Article? article;
   ArticleCard({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AppRouter.NavigateToWidget(ArticlePage(article: article!));
      },
      child: Padding(
        padding:  EdgeInsets.only(bottom: 16.h,),
        child: Container(
          height: 196.h,
          width: 335.w,
          decoration: BoxDecoration(
            color: Color.fromRGBO(251, 252, 255, 1),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16.w,right: 7.w,top: 16.h,bottom: 16.h),
            child: Row(
              children: [
                Container(
                  height: 164.h,
                  width: 99.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.network(article!.image,fit: BoxFit.cover,),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 183.w,
                      height: 48.h,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          article!.question,
                          maxLines: 2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Text(
                      '@username',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 45.h,
                      width: 197.w,
                      child: Text(
                        article!.description,
                        maxLines: 3,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            height: 1.4),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 197.w,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/ar_likes.svg'),
                          Spacer(),
                          Text(
                            article!.date!.toString(),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
