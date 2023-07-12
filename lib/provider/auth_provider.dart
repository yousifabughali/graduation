import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/helper/auth_helper.dart';
import 'package:graduation/helper/firestore_helper.dart';
import 'package:graduation/home_screens/home_screen.dart';
import 'package:graduation/model/user.dart';
import 'package:string_validator/string_validator.dart';

import '../auth_screens/last_Screen.dart';

class AuthProvider extends ChangeNotifier {
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> signUpKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  List<String> intrests = [];
  String level = '';
  String? id;

  String? nullValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'This Field is required';
    }
  }

  String? emailValidation(String? value) {
    if (!isEmail(value!)) {
      return 'Invalid Email';
    }
  }

  String? passwordValidation(String? value) {
    if (value!.length < 6) {
      return ' must be 6 and more';
    }
  }

  Future<void> signIn() async {
    try {
      if (signInKey.currentState!.validate()) {
        UserCredential? credential = await AuthHelper.authHelper
            .signIn(emailController.text, passwordController.text);
        if (credential != null) {
          AppUser appUser = await FireStoreHelper.fireStoreHelper
              .getUserFromFireStore(credential.user!.uid);
          await AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> signUp() async {
    if (signUpKey.currentState!.validate()) {
      log(passwordController.text.toString());
      log(emailController.text.toString());
      UserCredential? credential = await AuthHelper.authHelper
          .signUp(emailController.text, passwordController.text);
      id = credential!.user!.uid;
      AppUser appUser = AppUser(
          name: nameController.text,
          email: emailController.text,
          userName: userNameController.text,
          interests: intrests,
          postId: credential!.user!.uid!);
      FireStoreHelper.fireStoreHelper.addUsersToFireStore(appUser);
      if (credential != null) {
        //AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
        AppRouter.NavigateWithReplacemtnToWidget(SuccessfulRegistration());
      }
    }
  }

  Future<void> saveIntresets() async {
    // if(signUpKey.currentState!.validate()) {
    AppUser appUser = AppUser(
        name: nameController.text,
        email: emailController.text,
        userName: userNameController.text,
        postId: id,
        interests: intrests,
        level: level);
    await FireStoreHelper.fireStoreHelper
        .addIntresetsAndLevels(intrests, level, id!);
    // }
  }

  checkUser() async {
    AppUser? appUser = await AuthHelper.authHelper.checkUser();
    if (appUser != null) {
      emailController.text = appUser.email;
      userNameController.text = appUser.userName;
      nameController.text = appUser.name;
      await AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
    }
  }

  signOut() {
    emailController.text = '';
    userNameController.text = '';
    passwordController.text = '';
    nameController.text = '';
    AuthHelper.authHelper.signOut();
  }
//
// forgetPassword(){
//   AuthHelper.authHelper.forgetPassword('yousifabughali@gmail.com');
// }
}
