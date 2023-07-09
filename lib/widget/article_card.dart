
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/sub_pages/article_page.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AppRouter.NavigateToWidget(ArticlePage());
      },
      child: Container(
        height: 196.h,
        width: 335.w,
        decoration: BoxDecoration(
          color: Color.fromRGBO(251, 252, 255, 1),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Row(
            children: [
              Container(
                height: 160.h,
                width: 99.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Image.asset('assets/images/articleImage.png'),
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
                    child: Text(
                      'The importance of User Experience Design in...',
                      maxLines: 2,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
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
                      'UX (User Experience) is the process of creating meaningful and delightful experiences....',
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
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/ar_likes.svg'),
                      SizedBox(
                        width: 63.w,
                      ),
                      Text(
                        'Sun-11.11.23',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
