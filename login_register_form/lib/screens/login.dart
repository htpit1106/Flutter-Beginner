import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_register_form/widget/button/app_button.dart';
import 'package:login_register_form/widget/button/app_icon_button.dart';

import '../widget/background_widget.dart';
import '../widget/button/TextFormFieldCustom.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: BackgroundWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.fromLTRB(60, 90, 60, 30),
                child: Column(
                  children: [
                    Text(
                      "Login here",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 30),

                    Text(
                      "Welcome back you’ve been missed!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    TextFormFieldcustom(
                      controller: _emailController,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter your email";
                        }
                        return null;
                      },
                      hint: 'Email',
                    ),
                    SizedBox(height: 20),
                    TextFormFieldcustom(
                      controller: _passwordController,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter your password";
                        }
                      },
                      hint: 'Password',
                      obscure: true,
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot your password?",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.widthOf(context),
                      child: AppButton(
                        textButton: "Sign in",
                        onPress: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Sign in successful"),
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.green,
                                // action: SnackBarAction(
                                //   label: 'OK',
                                //   onPressed: () {},
                                // ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        context.go('/register');
                      },
                      child: Text(
                        "Create new account",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 80),
                    Text(
                      "Or continue with",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [IconButtonApp()],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
