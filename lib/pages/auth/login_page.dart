import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurgensys/components/mybutton.dart';
import 'package:insurgensys/components/mytextfield.dart';
import 'package:insurgensys/pages/auth/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset("lib/images/shield.png"),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Combat Insurgency",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                obscureText: false,
                hintText: "Email",
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: "Password",
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(text: "Login", onTap: () {}),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Don't have account? "),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const RegisterPage());
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
