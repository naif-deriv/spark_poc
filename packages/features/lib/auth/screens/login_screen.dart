import 'package:features/shared/spark_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../editions/screens/editions_screen.dart';
import '../../navigation/navigator.dart';
import '../../shared/insets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.dark // Dark == white status bar -- for IOS.
        ));
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      body: Padding(
        padding: Insets.all16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            const SparkLogo(),
            Insets.height32,
            Insets.height32,
            Insets.height32,
            const TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 0.5,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Insets.height32,
            Insets.height32,
            Insets.height32,
            IconButton(
              onPressed: () {
                SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
                    .copyWith(
                        statusBarColor: Colors.white, // Color for Android
                        statusBarBrightness: Brightness
                            .light // Dark == white status bar -- for IOS.
                        ));
                Navigation.pushReplacement(const EditionsListScreen(), context);
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
