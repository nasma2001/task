import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/Modules/Login/LoginCubit/LoginCubit.dart';
import 'package:task/Modules/Login/LoginCubit/LoginState.dart';
import 'package:task/Shared/Components/Components.dart';
import 'package:task/Shared/Components/Constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        builder: (context, builder) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 19, right: 26),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 92,
                  ),
                  const Image(
                    image: AssetImage('assets/images/VectorLifeTime.png'),
                  ),
                  const Image(
                    image: AssetImage('assets/images/Vector.png'),
                    fit: BoxFit.cover,
                    width: 102,
                  ),
                  const SizedBox(
                    height: 6.14,
                  ),
                  Text(
                    'Welcome to LifeTime!',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(
                    height: 36.63,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email or phone number',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  defTextEditing(
                    controller: emailController,
                    validate: (_) {
                      return null;
                    },
                    onChanged: (_) {
                      LoginCubit.get(context).changeColor(
                          emailController.text, passwordController.text);
                    },
                    isPassword: false,
                    label: 'example@gmail.com',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Choose a password',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  defTextEditing(
                    controller: passwordController,
                    validate: (_) {
                      return null;
                    },
                    onChanged: (_) {
                      LoginCubit.get(context).changeColor(
                          emailController.text, passwordController.text);
                    },
                    isPassword: true,
                    label: '********',
                    suffix: Icons.remove_red_eye,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: defaultTextButton(text: 'Forgot Password?'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  defaultButton(
                    onPressed: () {},
                    text: 'Log in',
                    isUpper: true,
                    context: context,
                    icon: Icons.arrow_forward_ios,
                    width: double.infinity,
                    background: LoginCubit.get(context).color,
                    height: 54,
                    borderSideColor: LoginCubit.get(context).color,
                    textColor: LoginCubit.get(context).textColor,
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.2,
                        width: 155,
                        color: const Color(0xffCCCCCC),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 7,
                        ),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffCCCCCC),
                          ),
                        ),
                      ),
                      Container(
                        height: 0.2,
                        width: 155,
                        color: const Color(0xffCCCCCC),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  defaultButton(
                    onPressed: () {},
                    text: 'Log in as a guest',
                    isUpper: true,
                    context: context,
                    width: double.infinity,
                    background: Colors.white,
                    height: 54,
                    borderSideColor: defaultColor,
                    textColor: defaultColor,
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: defaultTextButton(
                        text: 'I DON\'T HAVE AN ACCOUNT',
                        size: 13,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ),
        ),
        listener: (context, builder) {},
      ),
    );
  }
}
