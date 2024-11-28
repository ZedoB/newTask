import 'package:flutter/material.dart';
import 'package:task/authentication/presentation/signIn.dart';
import 'package:task/navigation_bar/pages/home.dart';

import '../../custom_widgets/custom_label_text.dart';
import '../../custom_widgets/custom_text_form_field.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String? name, email, password;

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Center(child: Text('Welcome to our app')),
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
                    height: 90,
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
                    height: 10,
                  ),
                  Center(
                    child: Row(
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          child: const Text("SignIn", style: TextStyle(color: Colors.greenAccent),),
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => SignInPage()));
                          },
                        ),
                      ],
                    )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Text('login', style: TextStyle(color: Colors.greenAccent),),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const HomePage()));
                        }
                      },
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
