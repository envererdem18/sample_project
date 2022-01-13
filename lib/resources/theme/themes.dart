import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
    // ... more
  );

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black54,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
      switchTheme: SwitchThemeData(
        overlayColor: MaterialStateProperty.all(Colors.green),
        thumbColor: MaterialStateProperty.all(Colors.red),
        trackColor: MaterialStateProperty.all(Colors.cyan),
      ),
      cardTheme: const CardTheme(
        color: Colors.green,
      )
      // ... more
      );
}
