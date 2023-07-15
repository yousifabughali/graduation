import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/sub_pages/payment_page.dart';

class SubscripeMembership extends StatelessWidget {
  const SubscripeMembership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 60,
        leading: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Premium Membership',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to our Premium Membership!',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp,color: Colors.black,fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 9.h,
              ),
              Text(
                'As a Premium member, you\'ll gain access to exclusive content and resources that will help you reach your learning goals faster and more efficiently than ever before. Here are just a few of the benefits you\'ll receive:',
                style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              RichText(
                text: TextSpan(
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp,fontFamily: 'Poppins',),
                  children: [
                    TextSpan(
                        text: '• Additional features on questions:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                      text:
                          'As a Premium member, you can add mentions and links to your questions, making them more interactive and engaging.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          wordSpacing: 2,
                          height: 1.4.h),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp,fontFamily: 'Poppins',),
                  children: [
                    TextSpan(
                        text: '• Articles:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                      text:
                          'You\'ll have full access to an unlimited number of articles on our platform. These articles cover a wide range of topics, As a Premium member, you\'ll be able to save your favorite articles.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 2,
                          height: 1.4.h),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp,fontFamily: 'Poppins',),
                  children: [
                    TextSpan(
                        text: '• Spaces:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                      text:
                          'Our Spaces feature is a new way to connect with other users on our platform. As a Premium member, you\'ll have full access to Spaces.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 2,
                          height: 1.4.h),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      height: 1.4.h,
                      wordSpacing: 2,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                        text:
                            'Becoming a Premium member is the best way to take your experience to the next level and connect with others in new and exciting ways. Don\'t just take our word for it, here\'s what some of our current Premium members have to say:'),
                    TextSpan(
                        text:
                            '\n\n\"I\'ve made so many new connections and learned so much from the unlimited access to articles and Spaces. The additional features on questions have been a game changer for me." \n- Sara',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                        text:
                            '\n\n\"The community of Premium members has been incredibly supportive and engaging. I feel like I\'m part of a special group that is really making the most of the platform." \n- John',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                        text:
                            '\n\nSo what are you waiting for? Sign up for our Premium membership today and start connecting and engaging with others like never before!'),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                      fixedSize: Size(325.w, 56.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PaymentPage()));
                  },
                  child:  Text(
                    'Upgrade Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h,),

            ],
          ),
        ),
      ),
    );
  }
}
