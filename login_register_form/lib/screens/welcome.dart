import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_register_form/widget/background_widget.dart';
import 'package:login_register_form/widget/button/app_button.dart';
import 'package:login_register_form/widget/button/app_text_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomeState();
  }
}

class _WelcomeState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 3,

              child: Center(child: Image.asset("assets/images/welcome.png")),
            ),
            Flexible(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Discover Your Dream Job here\n",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text:
                            "Explore all the existing job roles based on your interest and study major",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 16),
                Expanded(
                  child: AppButton(
                    textButton: "Login",
                    onPress: () {
                      context.push('/login');
                    },
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: AppTextButton(
                    text: "Register",
                    onPress: () {
                      context.go("/register");
                    },
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
