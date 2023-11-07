import 'package:flutter/material.dart';

import '../main/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  gotoMain()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  void initState() {
    gotoMain();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/ecommerce-logo.jpeg",
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        "Ecommerce",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),

                const Text("Mohon tunggu..."),
                const SizedBox(
                  height: 10,
                ),
                const CircularProgressIndicator()
              ],
            ),
          ),
        );
  }
}


