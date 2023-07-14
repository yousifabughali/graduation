import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:provider/provider.dart';

class ArticlePublish2 extends StatefulWidget {
  const ArticlePublish2({Key? key}) : super(key: key);

  @override
  State<ArticlePublish2> createState() => _ArticlePublish2State();
}

class _ArticlePublish2State extends State<ArticlePublish2> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<AuthProvider>();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
              fixedSize: Size(72.w, 32.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onPressed: () async {
              await context.read<FireStoreProvider>().addNewArticle(
                    provider.nameController.text,
                  );
            },
            child: Text(
              'Done',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Form(
            key: context.read<FireStoreProvider>().addNewArticleKey2,
            child: TextFormField(
              controller: context
                  .read<FireStoreProvider>()
                  .articleDescriptionController,
              validator: context.read<FireStoreProvider>().requiredValidator,
              autofocus: true,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Start typing...',
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
