import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantin_new_mobile/views/main_view.dart';
import 'package:kantin_new_mobile/views/menu_view.dart';
import '../constants/global_constants.dart';
import '../widgets/login_page_view_widgets/background_Image.dart';
import '../widgets/login_page_view_widgets/password_Input.dart';
import '../widgets/login_page_view_widgets/rounded_Button.dart';
import '../widgets/login_page_view_widgets/text_Input.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const Column(
                      children: [
                        Text(
                          'BAUM ',
                          style: kHeading,
                        ),
                        Text(
                          'Kantine Hoşgeldiniz ',
                          style: kBodyText,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Column(
                      children: [
                        TextInput(
                          icon: FontAwesomeIcons.solidEnvelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                        PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Password',
                          inputAction: TextInputAction.done,
                        ),
                        Text(
                          'Forgot Password?',
                          style: kBodyText,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Column(
                      children: [
                        RoundedButton(
                          onPressed: (_) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuView()),
                            );
                          },
                          buttonText: 'Login',
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: const Text(
                            'CreateNewAccount',
                            style: kBodyText,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

