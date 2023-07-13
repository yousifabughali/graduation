import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/model/article.dart';


class ArticlePage extends StatefulWidget {
  Article article;
  ArticlePage({required this.article,Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  double bannerheight = 610;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            child: InkWell(
              onTap: (){
                AppRouter.popRouter();
              },
              child: SvgPicture.asset(
                'assets/icons/arrow_back.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            SizedBox(
              height: 275.h,
              width: 375.w,
              child: Image.network(widget.article.image,
                  fit: BoxFit.cover),
            ),
            Column(
              children: [
                SizedBox(
                  height: 202.h,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.r),
                          topLeft: Radius.circular(25.r)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 48.h,
                            width: 335,
                            child: Text(
                              widget.article.question,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                              widget.article.date.toString()??'',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/a1.png',
                                height: 40.h,
                                width: 40.w,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Published by',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    widget.article.name!,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    fixedSize: Size(72.w, 32.h),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r))),
                                onPressed: () {},
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.h,
                          ),
                          Text(
                            widget.article.description,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 29.h,
                                width: 93.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: Colors.grey),
                                child: Center(
                                  child: Text(
                                    widget.article.hashtags??'',

                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
