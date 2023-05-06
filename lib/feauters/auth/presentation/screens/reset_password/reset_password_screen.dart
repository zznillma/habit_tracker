import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tracker/feauters/auth/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:tracker/feauters/auth/presentation/widgets/custom_text_field.dart';
import 'package:tracker/internal/helpers/components/custom_button_card.dart';
import 'package:tracker/internal/helpers/util.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: Column(
          children: [
            SizedBox(height: 119.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Enter new password',
                style: TextStyle(
                  color: const Color(0xff666666),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(height: 27.h),
            CustomTextFieldCard(controller: controllerPassword),
            SizedBox(height: 27.h),
            CustomButtonCard(
              onPressed: () {
                customPushAndRemoveUntil(context, const SignInScreen());
              },
              title: 'Reset your password',
            ),
          ],
        ),
      ),
    );
  }
}
