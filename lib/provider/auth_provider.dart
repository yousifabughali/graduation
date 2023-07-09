
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


class AuthProvider extends ChangeNotifier{
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> signUpKey = GlobalKey();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController userNameController= TextEditingController();
  TextEditingController nameController= TextEditingController();
  Set<String> intrests={};
  String level='';
  String? id;

  String? nullValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'This Field is required';
    }
  }

   String? emailValidation(String? value){
    if(!isEmail(value!)){
      return 'Invalid Email';
    }
  }

  String? passwordValidation(String? value){
    if(value!.length < 6){
      return ' must be 6 and more';
    }
  }
  Future<void> signIn() async {
   try{

     // if(signInKey.currentState!.validate()) {
     log(emailController.text.toString());
     log(passwordController.text.toString());

     UserCredential? credential= await AuthHelper.authHelper.signIn(
         emailController.text,passwordController.text);
     log(credential?.user?.uid ?? 'null');
     if (credential!=null) {
       log('hiii');

       AppUser appUser= await FireStoreHelper.fireStoreHelper.getUserFromFireStore(credential.user!.uid);
       log('655rvb');


       log('navigate');

       await AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
       log('navigate222');



     }
     //  }
   }
       catch(e){
     log(e.toString());
     log('xxxx');
       }
  }
  Future<void> signUp() async {
  //  if(signUpKey.currentState!.validate()) {
     log(passwordController.text.toString());
     log(emailController.text.toString());
      UserCredential? credential= await AuthHelper.authHelper.signUp(
          emailController.text,passwordController.text);
      id = credential!.user!.uid;
      AppUser appUser =AppUser(name: nameController.text,email: emailController.text, userName: userNameController.text,interests: intrests,id: credential!.user!.uid!);
      FireStoreHelper.fireStoreHelper.addUsersToFireStore(appUser);
      if (credential!=null){
        //AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
        AppRouter.NavigateWithReplacemtnToWidget(SuccessfulRegistration());

     // }
    }
  }


  Future<void> saveIntresets() async {
    //  if(signUpKey.currentState!.validate()) {

    AppUser appUser =AppUser(name: nameController.text,email: emailController.text, userName: userNameController.text,id: id,interests: intrests,level: level );
    await FireStoreHelper.fireStoreHelper.addIntresetsAndLevels(intrests,level,id!);

  }

  // checkUser() async {
  //   AppUser? appUser=await AuthHelper.authHelper.checkUser();
  //   if(appUser!=null){
  //     emailController.text=appUser.email;
  //     phoneController.text=appUser.phone;
  //     userNameController.text=appUser.userName;
  //     await AppRouter.NavigateWithReplacemtnToWidget(CategoriesScreen());
  //   }
  // }

  // signOut(){
  //   emailController.text='';
  //   phoneController.text='';
  //   userNameController.text='';
  //   passwordController.text='';
  //   AuthHelper.authHelper.signOut();
  //
  // }
  //
  // forgetPassword(){
  //   AuthHelper.authHelper.forgetPassword('yousifabughali@gmail.com');
  // }
}