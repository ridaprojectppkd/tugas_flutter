import 'package:flutter/material.dart';
import 'package:tugas_flutter/constant/app_image.dart';
import 'package:tugas_flutter/constant/app_style.dart';
import 'package:tugas_flutter/meet_12/met_12b.dart';
import 'package:tugas_flutter/sharedprefreces.dart/preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print("isLogin: $isLogin");
      if (isLogin) {
        return Navigator.pushNamedAndRemoveUntil(
          context,
          MeetDuaBelasB.id,
          (route) => false,
        );
      } else {
        Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
      }
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            Image.asset(AppImage.apelImage),
            SizedBox(height: 20),
            Text("Apel", style: AppStyle.fontBold()),
            Spacer(),
            SafeArea(
              child: Text("v 1.0.0", style: AppStyle.fontRegular(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
