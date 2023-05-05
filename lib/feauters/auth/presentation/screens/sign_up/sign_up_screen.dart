import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../internal/helpers/util.dart';
import '../../widgets/custom_text_field.dart';
import '../sign_in/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 89.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 44.sp,
                  ),
                ),
                SizedBox(width: 71.w),
                InkWell(
                  onTap: () {
                    customPushAndRemoveUntil(context, const SignInScreen());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Row(
                      children: [
                        Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14.sp,
                            color: const Color(0xffFF5C00),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15.r,
                          color: const Color(0xffFF5C00),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 53.h),
            const Text(
              'Name',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Color(0xff666666),
              ),
            ),
            SizedBox(height: 10.h),
            const CustomTextFieldCard(),
            SizedBox(height: 22.h),
            const Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Color(0xff666666),
              ),
            ),
            SizedBox(height: 10.h),
            const CustomTextFieldCard(),
            SizedBox(height: 22.h),
            const Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Color(0xff666666),
              ),
            ),
            SizedBox(height: 10.h),
            const CustomTextFieldCard(),
            SizedBox(height: 22.h),
            const Text(
              'Password Confirm',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Color(0xff666666),
              ),
            ),
            SizedBox(height: 10.h),
            const CustomTextFieldCard(),
            SizedBox(height: 48.h),
            Container(
              width: 1.sw,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffFFA450),
                    Color(0xffFF5C00),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 59.h),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Or sign up with:',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Color(0xff666666),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(4.r),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    blurRadius: 14.r,
                    color: const Color.fromRGBO(200, 200, 200, 0.15),
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: SvgPicture.asset(
                  'assets/images/google.svg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
