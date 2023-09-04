import 'package:elmostaabel_company/model/facebook_model.dart';
import 'package:elmostaabel_company/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController{
  bool isVisibility=false;
  bool isCheckBox=false;
  bool isChoose=false;
  var displayUserNam = ''.obs;
  var displayUserPhoto = ''.obs;
  String email='';
  String password='';
  var displayDate=''.obs;
  var displayPhoneNumber=''.obs;
  String get metadata{
    return displayDate.value;
  }
  
  FirebaseAuth auth =FirebaseAuth.instance;
  GoogleSignIn googleSignIn=GoogleSignIn();
  FaceBookModel? faceBookModel;

  void visibility(){
    isVisibility=!isVisibility;
    update();
  }
  void checkBox(){
    isCheckBox=!isCheckBox;
    update();
  }
  void isChoos(){
    isChoose=!isChoose;
    update();
  }

  void signUpdata(
    {
      required String nameData,
      required String dateData,
      required String phoneNumberData,
      required String emailData
    }
  ){
    email=emailData;
    displayUserNam.value=nameData;
    displayDate.value=dateData;
    displayPhoneNumber.value=phoneNumberData;
    update();
    //signup
    
    signUpUsingFirebase(
      email:email ,
      password:password ,
      name:displayUserNam.value ,
      date:displayDate.value ,
      phone: displayPhoneNumber.value,

    );

    printData();
    Get.offNamed(Routes.MainScreen);
  }
  void emaliPassword(
    {
      required String emailData,
      required String passwordData,
    }
  ){
    email=emailData;
    password=passwordData;
    update();
    Get.toNamed(Routes.CompleteSignUp);
    printData();
  }
  
  void printData(){
    print('eamil : $email');
    print('password : $password');
    print('name : $displayUserNam');
    print('date : $displayDate');
    print('phone : $displayPhoneNumber');
    print('photo : $displayUserPhoto');
  }

  void signUpUsingFirebase(
    {
      required String name,
      required String email,
      required String password,
      required String date,
      required String phone,
    }
  )async{
    try {
  final credential = await auth.createUserWithEmailAndPassword(
    email: email,
    password: password,
  ).then((value) {
        displayUserNam.value = name;
        displayDate.value=date;
        displayPhoneNumber.value=phone;
        auth.currentUser!.updateDisplayName(name);
        auth.currentUser?.updatePhoneNumber(phone as PhoneAuthCredential);
        auth.currentUser?.metadata;
        
        
      });
  update();
  Get.offNamed(Routes.MainScreen);
} on FirebaseAuthException catch (error) {
  String title =error.code.replaceAll(RegExp('-'), ' ').capitalize!;
  String message='';
  if (error.code == 'weak-password') {
    message='The password provided is too weak.';
    
  } else if (error.code == 'email-already-in-use') {
    message='The account already exists for that email.';
    
  }else{
    message=error.message.toString();
  }

  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey.withOpacity(0.3),
    colorText: Colors.black
  );
} catch (error) {
 Get.snackbar(
    'Error!',
    error.toString(),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey.withOpacity(0.2),
    colorText: Colors.black
  );
}

  }

  

  void logInUsingFirebase(
    {
     required String email,
    required String password,
    }
  )async{
    try {
  final credential = await auth.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
    update();
    Get.offNamed(Routes.MainScreen);
} on FirebaseAuthException catch (error) {
  String title =error.code.replaceAll(RegExp('-'), ' ').capitalize!;
  String message='';
  if (error.code == 'user-not-found') {
    message='No user found for that email.';
  } else if (error.code == 'wrong-password') {
    message='Wrong password provided for that user.';
  }else{
    message=error.message.toString();
  }
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey.withOpacity(0.3),
    colorText: Colors.black
  );
} catch (error) {
 Get.snackbar(
    'Error!',
    error.toString(),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey.withOpacity(0.2),
    colorText: Colors.black
  );
}
  }

  void googleSignUpApp()async{
    try{
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    displayUserNam.value=googleUser!.displayName!;
    displayUserPhoto.value=googleUser.photoUrl!;
    update();
    Get.offNamed(Routes.MainScreen);
    }catch(error){

    }

  }

  void faceBookSignUpApp()async{
    final LoginResult loginResult = await FacebookAuth.instance.login();

    if(loginResult.status==LoginStatus.success){

      final data= await FacebookAuth.instance.getUserData();
        faceBookModel=FaceBookModel.fromJson(data);
        print('==================');
        print(faceBookModel?.email);
        print('==================');
        print(faceBookModel?.name);
        update();
        Get.offNamed(Routes.MainScreen);
    }
    
     
  }
  
  void resetPasswordEmail()async{
    try {
      auth.sendPasswordResetEmail(email: email);
      
    update();
    Get.toNamed(Routes.LogInScreen);
} on FirebaseAuthException catch (error) {
  String title =error.code.replaceAll(RegExp('-'), ' ').capitalize!;
  String message='';
  if (error.code == 'user-not-found') {
    message='No user found for that email.';
  }else{
    message=error.message.toString();
  }
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey.withOpacity(0.3),
    colorText: Colors.black
  );
} catch (error) {
 Get.snackbar(
    'Error!',
    error.toString(),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey.withOpacity(0.2),
    colorText: Colors.black
  );
}
  }
  
  void signOutFromApp(){}





}