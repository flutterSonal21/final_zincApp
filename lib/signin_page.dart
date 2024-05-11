import 'package:fintech/firebase_interaction.dart';
import 'package:fintech/widgets/custom_button.dart';
import 'package:fintech/widgets/custom_text.dart';
import 'package:fintech/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:fintech/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final FirebaseInteraction firebase = FirebaseInteraction();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Welcome Back holder!',
                style: TextStyle(
                    fontSize: 37,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                suffixIcon: Icons.mail,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: passwordController,
                hintText: 'password',
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                text: 'Sign in',
                onTap: () => firebase.signInWithEmailAndPassword(
                  context,
                  emailController.text.trim(),
                  passwordController.text.trim(),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              CustomText(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  text: 'Don\'t have an account ? ',
                  buttonText: 'Sign up')
            ],
          ),
        ),
      ),
    );
  }
}
