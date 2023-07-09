import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/widget/bottom_sheet.dart';
import 'package:graduation/widget/select_interst.dart';
import 'package:graduation/widget/select_level.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

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
              child: Image.asset('assets/images/articleImage.png',
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
                              'The importance of User Experience design in today\'s digital age',
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
                            'Published 2 days ago',
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
                                    'Ahmad Ali',
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
                            '''In today's digital age, User Experience (UX) design has become increasingly important for businesses and organizations that want to create successful products and services. UX design is the process of designing digital or physical products that are easy to use, enjoyable, and effective for their intended users. The following are some reasons why UX design is important in today's digital age:
Enhances User Satisfaction: UX design focuses on designing products that meet the needs and expectations of users. When users are satisfied with a product, they are more likely to continue using it, recommend it to others, and provide positive feedback, which can increase the product's success.''',
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
                                    '#Uxdesign',

                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(width: 9.w,),
                              Container(
                                height: 29.h,
                                width: 93.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: Colors.grey),
                                child: Center(
                                  child: Text(
                                    '#Uxdesign',

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
