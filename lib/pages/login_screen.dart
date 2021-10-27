import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:learn_english_app/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
          child: Column(
            children: [
              const Text(
                'BrainBob',
                style: TextStyle(
                  color: purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('assets/images/boy-listening-music.png'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Be ready to learn English easily',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Listen to stories, watch videos and improve your language with BrainBob',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/homeScreen');
                      },
                      child: const Text('Get Started'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(purple),
                        shape: MaterialStateProperty.all(const StadiumBorder()),
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 26,
                            vertical: 16,
                          ),
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
    );
  }
}
