import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruite_app/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "FirebaseAuthException in createUserWithEmailAndPassword: ${e.toString()} and code ${e.code}",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'The account already exists for that email.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message:
              'Network error. Please check your internet connection and try again.',
        );
      } else {
        throw CustomException(message: 'An undefined Error happened.');
      }
    } catch (e) {
      log("Error in createUserWithEmailAndPassword: ${e.toString()}");
      throw CustomException(
        message: 'An Error occurred. Please try again later.',
      );
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "FirebaseAuthException in signInWithEmailAndPassword: ${e.toString()} and code ${e.code}",
      );
      if (e.code == 'user-not-found') {
        throw CustomException(
          message: 'Wrong password or email provided for that user.',
        );
      } else if (e.code == 'wrong-password') {
        throw CustomException(
          message: 'Wrong password or email provided for that user.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message:
              'Network error. Please check your internet connection and try again.',
        );
      } else {
        throw CustomException(message: 'An undefined Error happened.');
      }
    } catch (e) {
      log("Error in signInWithEmailAndPassword: ${e.toString()}");
      throw CustomException(
        message: 'An Error occurred. Please try again later.',
      );
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }
  Future deleteUser() async{
    await FirebaseAuth.instance.currentUser?.delete();
  }
}
