import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tracker/feauters/auth/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:tracker/feauters/auth/presentation/widgets/custom_text_field.dart';

import '../../../../../internal/helpers/util.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 44.sp,
                  ),
                ),
                InkWell(
                  onTap: () {
                    customPushAndRemoveUntil(context, const SignUpScreen());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Row(
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Color(0xffFF5C00),
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
            Text(
              'Email',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Nunito',
                color: const Color(0xff666666),
              ),
            ),
            SizedBox(height: 10.h),
            const CustomTextFieldCard(),
            SizedBox(height: 22.h),
            Text(
              'Password',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Nunito',
                color: const Color(0xff666666),
              ),
            ),
            SizedBox(height: 10.h),
            const CustomTextFieldCard(),
            SizedBox(height: 27.h),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 24.r,
                    width: 24.r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.r),
                      border: Border.all(
                        width: 2.r,
                        color: const Color(0xff666666),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Text(
                  'Remember me',
                  style: TextStyle(
                    color: const Color(0xff7F7F7F),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                InkWell(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: const Color(0xffFF5C00),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.h),
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
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            SizedBox(height: 55.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Or log in with:',
                style: TextStyle(
                  color: const Color(0xff7F7F7F),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
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
            ),
          ],
        ),
      ),
    );
  }
}
