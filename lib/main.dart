import 'package:ecommerce/provider/product_provider.dart';
import 'package:ecommerce/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main(){
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ProductProvider(),
        )
      ],
      child: MaterialApp(
        title: "Ecommerce Lauwba",
        home: SplashScreen(),
      ),
    );
  }
}
