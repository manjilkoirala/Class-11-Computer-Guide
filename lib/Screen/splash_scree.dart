import 'package:class11computer/Screen/homepage.dart';
import 'package:class11computer/Screen/question_answer.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: const Color.fromARGB(255, 244, 244, 244),
                clipBehavior: Clip.antiAlias,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset('assets/logo.png'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Class 11 Computer Guide",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
