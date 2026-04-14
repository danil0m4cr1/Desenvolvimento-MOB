import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:app_aula10/tela01.dart";
import "package:flutter/material.dart";
import "package:page_transition/page_transition.dart";

void main(){
  runApp(TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Aula 10",
      theme: ThemeData(useMaterial3: true, 
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        )
      )
      ),
      // AnimatedSplashScreen - Permite criar animacoes no app
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Icons.home, 
        splashIconSize: 200,
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        nextScreen: TelaHome(),
        backgroundColor: Colors.red,
        ),
      );
  }
}