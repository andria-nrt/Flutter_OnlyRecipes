import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:food_recipe_project/pages/onboardingpage/screen_merged.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //set time to load the new page

    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreenv2()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 208, 225, 77),
              Color.fromARGB(255, 37, 86, 154),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset("assets/image/foodcarousel.json"),
            ),
            const SizedBox(height: 20),
            const Text(
              "OnlyRecipes",
              style: TextStyle(
                  fontFamily: 'Lobster Two',
                  fontSize: 32,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
