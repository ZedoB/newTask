import 'package:flutter/material.dart';
import 'package:task/authentication/presentation/login.dart';
import 'package:task/navigation_bar/pages/home.dart';

import '../../custom_widgets/custom_label_text.dart';
import '../../custom_widgets/custom_text_form_field.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  String? email, password, confirmPassword, name;

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Center(child:  Text('Welcome to our app'),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'sign in',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomLabelText(text: 'name'),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (data) {
                      name = data;
                    },
                    hintText: 'Enter your name',
                    suffixIcon: const Icon(
                      Icons.drive_file_rename_outline,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomLabelText(text: 'email'),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (data) {
                      email = data;
                    },
                    hintText: 'mail@gmail.com',
                    suffixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomLabelText(text: 'password'),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (data) {
                      password = data;
                    },
                    obscureText: true,
                    hintText: '••••••••••••••••••••',
                    suffixIcon: const Icon(
                      Icons.lock,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomLabelText(text: 'confirm your password'),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (data) {
                      confirmPassword = data;
                    },
                    obscureText: true,
                    hintText: '••••••••••••••••••••',
                    suffixIcon: const Icon(
                      Icons.lock,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Text('Sign Up', style: TextStyle(color: Colors.greenAccent),),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
