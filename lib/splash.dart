import 'package:testered/ui/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/spll.png',
                height: 150,
              ),
              const Text('Aqaar',
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: 'Schyler',
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 60,
              ),
              const CircularProgressIndicator(
                color: Color.fromARGB(255, 149, 212, 110),
              )
            ],
          ),
        ));
  }
}
