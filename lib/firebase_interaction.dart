import 'package:fintech/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'homepage.dart';

class FirebaseInteraction{
  final  FirebaseAuth auth=FirebaseAuth.instance;

  Future<void> signOut(BuildContext context) async {
    try {
      await auth.signOut();
      // Navigate back to the login page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()), // Replace SignInPage() with your login page
      );
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  void signUp(BuildContext context ,TextEditingController emailController,TextEditingController passwordController ) async {
    try {
      final auth = FirebaseAuth.instance;
      await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // Navigate to the home page after successful sign-up
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    } catch (e) {
      // Handle sign-up errors
      debugPrint('Sign-up failed: $e');
      // You might want to display an error message to the user
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn =
      GoogleSignIn(scopes: ['email']); // Add required scopes
      final FirebaseAuth auth = FirebaseAuth.instance;

      // Sign out the current user (if any) to force account selection
      await googleSignIn.signOut();
      await auth.signOut();

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await auth.signInWithCredential(credential);
        // Navigate to the home screen after successful sign-in
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Homepage()),(route) => false,
        );
      } else {
        // Handle if user cancels Google sign-in
        print('User cancelled Google sign-in');
      }
    } catch (e) {
      print('Google sign-in error: $e');
    }
  }

  Future<void> signInWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Navigate to the home screen after successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    } catch (e) {
      print('Email sign-in error: $e');
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to sign in. Please check your credentials.'),
        ),
      );
    }
  }
}