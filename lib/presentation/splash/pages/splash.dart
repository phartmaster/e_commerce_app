import 'package:e_commerce_app/core/configs/assets/app_vectors.dart';
import 'package:e_commerce_app/core/configs/theme/app_colors.dart';
import 'package:e_commerce_app/presentation/auth/pages/signin.dart';
import 'package:e_commerce_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:e_commerce_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignInPage(),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SvgPicture.asset(AppVectors.appLogo),
        ),
      ),
    );
  }
}
