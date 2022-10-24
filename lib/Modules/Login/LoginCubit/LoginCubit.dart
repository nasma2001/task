
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/Modules/Login/LoginCubit/LoginState.dart';
import 'package:task/Shared/Components/Constants.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context)=>BlocProvider.of(context);

  var color = const Color(0xffD9D9D9);
  var textColor = Colors.black.withOpacity(0.3);
  void changeColor(String emailController,String passwordController){
    if(emailController != '' && passwordController != ''){
      color = defaultColor;
      textColor = Colors.white;
      emit(LoginFilled());
    }
  }



}