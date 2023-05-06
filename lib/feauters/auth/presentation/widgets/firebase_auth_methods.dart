import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../firebase_options.dart';
import '../../../../internal/helpers/components/exceptions.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;

  FirebaseAuthMethods(this._auth);
  // EMAIL SIGN UP
  Future<void> signUpWithEmail({
    required String name,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      Exceptions.showFlushbar(
        e.message.toString(),
        context: context,
      );
    }
  }

  // EMAIL SIGN IN
  Future<void> signInWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerification(context);
      }
    } on FirebaseAuthException catch (e) {
      Exceptions.showFlushbar(
        e.message.toString(),
        context: context,
      );
    }
  }

  // GOOGLE SIGN IN

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    await Firebase.initializeApp();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    return await _auth.signInWithCredential(credential);
  }

  // EMAIL VERIFICATION
  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      Exceptions.showFlushbar('Email verefication sent', context: context);
    } on FirebaseAuthException catch (e) {
      Exceptions.showFlushbar(
        e.message.toString(),
        context: context,
      );
    }
  }
}
