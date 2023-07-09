import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class SelectLevel extends StatefulWidget {
  SelectLevel({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectLevel> createState() => _SelectLevelState();
}

enum ExperienceLevel {
  freshLearner,
  internship,
  junior,
  midLevel,
  senior,
}

class _SelectLevelState extends State<SelectLevel> {
  ExperienceLevel? _selectedLevel;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context);

    return ListView(
      children: [
        RadioListTile<ExperienceLevel>(
          title: Text('Fresh Learner'),
          value: ExperienceLevel.freshLearner,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level=value.toString();

            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text('Internship'),
          value: ExperienceLevel.internship,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level=value.toString();
            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text('Junior'),
          value: ExperienceLevel.junior,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level=value.toString();

            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text('Mid-Level'),
          value: ExperienceLevel.midLevel,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level=value.toString();

            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text('Senior'),
          value: ExperienceLevel.senior,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level=value.toString();

            });
          },
        ),
      ],
    );
  }
}

// Padding(
//   padding:  EdgeInsets.only(left: 25.w,right: 25.w,top: 17.h,bottom: 17.h),
//   child: ElevatedButton(
//     onPressed: () {
//
//     },
//     child: Text(
//       'Finish',
//       style: TextStyle(color: Colors.white),
//     ),
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.r),
//           side: BorderSide(color: Colors.black)),
//       backgroundColor: Colors.black,
//       minimumSize: Size(325.w, 56.h),
//     ),
//   ),
// ),
