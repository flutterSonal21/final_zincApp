import 'package:fintech/firebase_interaction.dart';
import 'package:fintech/homepage.dart';
import 'package:fintech/signin_page.dart';
import 'package:fintech/widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController=TextEditingController();
  final _nameController=TextEditingController();
  final FirebaseInteraction _firebase=FirebaseInteraction();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50,),
              const Text('Welcome !',style: TextStyle(
                fontSize: 26,
                color: Colors.blue
              ),),
              const SizedBox(height: 30,),
              CustomTextField(
                controller: _nameController,
                hintText: 'Full Name',
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.person,
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                controller: _emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.mail,
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                controller: _passwordController,
                hintText: 'password',
                isObscuredText: true,
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                controller: _confirmPasswordController,
                hintText: 'confirm password',
                isObscuredText: true,
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(height: 30,),
              CustomButton(text: 'Sign Up', onTap: (){
               _firebase.signUp(context,_emailController,_passwordController);
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()),(route) => false,);
              }),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('OR',style: TextStyle(
                        color: Colors.grey.shade700,
                      ),),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
          GestureDetector(
            onTap: ()=> _firebase.signInWithGoogle(context),
            child: Container(
              width: 328,
              height: 54,
              padding: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
              // margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all()
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  const SizedBox(width: 15,),
                  const Center(
                    child: Text('Sign in with Google',style:TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),
            ),
          ),
              const SizedBox(height: 140,),
              CustomText(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
              }, text: 'Already have an account ? ', buttonText: 'SignIn')

            ],
          ),
        ),
      ),
    );
  }
}