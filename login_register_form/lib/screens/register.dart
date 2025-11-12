import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_register_form/widget/background_widget.dart';

import '../widget/button/TextFormFieldCustom.dart';
import '../widget/button/app_button.dart';
import '../widget/button/app_icon_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterState();
  }

}

class _RegisterState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();


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
                margin: EdgeInsets.fromLTRB(51, 90, 51, 30),
                child: Column(
                  children: [
                    Text(
                      "Create Account",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 10),

                    Text(
                      "Create an account so you can explore all the existing jobs",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    TextFormFieldcustom(
                      controller: _emailController,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter your email";
                        }
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

                    TextFormFieldcustom(
                      controller: _confirmpasswordController,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter confirm password";
                        }
                        if (value != _passwordController.text){
                          return 'confirm password not match';
                        }
                        return null;
                      },
                      hint: 'Confirm password',
                      obscure: true,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.widthOf(context),
                      child: AppButton(
                        textButton: "Sign up",
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
                        context.go('/login');
                      },
                      child: Text(
                        "Already have an account",
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
                      children: [
                        IconButtonApp(),
                      ],
                    )
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