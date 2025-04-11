import 'package:e_commerce_app/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce_app/common/widgets/appbar/basic_appbar.dart';
import 'package:e_commerce_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_app/presentation/auth/pages/enter_password.dart';
import 'package:e_commerce_app/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _firstNameField(context),
            const SizedBox(height: 20),
            _lastNameField(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _confirmPasswordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _signIn(context)
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return Text(
      'Create Account',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'First Name',
      ),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Last Name',
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  Widget _confirmPasswordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email Address',
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, EnterPasswordPage());
      },
      title: 'Create Account',
    );
  }

  Widget _signIn(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
          ),
          TextSpan(
              text: 'Sign in here.',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.pushReplacement(context, SignInPage());
                },
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
