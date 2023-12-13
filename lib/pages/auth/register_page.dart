import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurgensys/components/mybutton.dart';
import 'package:insurgensys/components/mytextfield.dart';
import 'package:insurgensys/pages/auth/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordRepeatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
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
                controller: nameController,
                obscureText: false,
                hintText: "Name",
              ),
              const SizedBox(
                height: 10,
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
                controller: phoneController,
                obscureText: false,
                hintText: "Phone",
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
              MyTextField(
                controller: passwordRepeatController,
                obscureText: true,
                hintText: "Repeat Password",
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(text: "Sign Up", onTap: () {}),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Already have account? "),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const LoginPage());
                      },
                      child: const Text(
                        "Sign In",
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
