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
      shrinkWrap: true,
      children: [
        RadioListTile<ExperienceLevel>(
          title: Text(
            'Fresh Learner',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: const Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
          value: ExperienceLevel.freshLearner,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level = value.toString();
            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text(
            'Internship',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: const Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
          value: ExperienceLevel.internship,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level = value.toString();
            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text(
            'Junior',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: const Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
          value: ExperienceLevel.junior,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level = value.toString();
            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text(
            'Mid-Level',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: const Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
          value: ExperienceLevel.midLevel,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level = value.toString();
            });
          },
        ),
        RadioListTile<ExperienceLevel>(
          title: Text(
            'Senior',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: const Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
          value: ExperienceLevel.senior,
          groupValue: _selectedLevel,
          onChanged: (value) {
            setState(() {
              _selectedLevel = value;
              provider.level = value.toString();
            });
          },
        ),
      ],
    );
  }
}

