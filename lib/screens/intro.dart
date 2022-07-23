import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/widgets/widgets.dart';
import '/theme/theme.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Image.asset(
            'assets/images/intro.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),
              const Text(
                'Welcome to Coursely!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: CourslyButton(
                  text: 'Continue with Apple',
                  bgColor: const Color.fromARGB(13, 0, 0, 0),
                  color: Colors.black,
                  icon: Image.asset('assets/images/apple.png'),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: double.infinity,
                child: CourslyButton(
                  text: 'Continue with Google',
                  bgColor: const Color.fromARGB(13, 0, 0, 0),
                  color: Colors.black,
                  icon: Image.asset('assets/images/google.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: const Color(0xffF2F2F2),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or',
                      style: TextStyle(
                        color: Color(0xffC0C0C0),
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: const Color(0xffF2F2F2),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CourslyButton(
                text: 'Signup',
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
                onTap: () => Get.offNamed('/home'),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Alreaady Registred? ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color:
                          context.theme.extension<CourslyColor>()!.accentColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
