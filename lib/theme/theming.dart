import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theming {
  /* ------ CONSTANTS ----- */
  // colors - make tints at https://maketintsandshades.com
  final Color _primary = Color(0xFFFCD8A7); // #6D67FF
  //final Color _primaryLight = Color(0xFF8985FF);
  //final Color _primaryDark = Color(0xFF5652CC);

  final Color _secondary = Color(0xFFF2E7DD); // #6D67FF
  // static const Color _secondaryLight = Color(0xFF8985FF);
  // static const Color _secondaryDark = Color(0xFF5652CC);

  final Color _bgColorDark = const Color(0xFF19182C);
  final Color _bgColorSuppDark = const Color(0xFF242339);
  //final Color _iconColorDark = const Color(0xFF363740);

  // static const Color _light = Color(0xFFF7F8FC);
  // static const Color _lightGray = Color(0xFFA4A6B3);
  // static const Color _darkGray = Color(0xFF363740);

  /* ------ WIDGET THEMES -------- */
  final _textTheme = GoogleFonts.firaSansCondensedTextTheme;
  late AppBarTheme _appBarTheme;
  late ElevatedButtonThemeData _elevatedButtonThemeData;
  late FloatingActionButtonThemeData _floatingActionButtonThemeData;
  late InputDecorationTheme _inputDecorationTheme;
  late IconThemeData _iconThemeData;
  late TabBarTheme _tabBarTheme;

  /* ------ APP THEMES --------- */
  late ThemeData _lightTheme;
  late ThemeData _darkTheme;

  // getters
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;

  Theming() {
    _appBarTheme = AppBarTheme(backgroundColor: _primary);

    _elevatedButtonThemeData = ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            backgroundColor: _primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5))));

    // _floatingActionButtonThemeData = FloatingActionButtonThemeData(
    //   elevation: _defaultElevation,
    //   disabledElevation: _defaultElevation,
    //   highlightElevation: _defaultElevation,
    // );

    _inputDecorationTheme = const InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      filled: true,
      isDense: true,
    );

    _iconThemeData = IconThemeData(color: _primary);

    // _tabBarTheme = TabBarTheme(
    //     indicator: BoxDecoration(
    //         color: _primaryDark, borderRadius: BorderRadius.circular(10)));

    _lightTheme = ThemeData(
      // colorScheme: const ColorScheme.light().copyWith(
      //   primary: _primary,
      //   secondary: _secondary,
      // ),
      elevatedButtonTheme: _elevatedButtonThemeData,
      // floatingActionButtonTheme: _floatingActionButtonThemeData,
      inputDecorationTheme: _inputDecorationTheme,
      textTheme: _textTheme(),
      appBarTheme: _appBarTheme,
      // iconTheme: _iconThemeData,
      //tabBarTheme: _tabBarTheme,
      colorScheme:
          ColorScheme.fromSeed(seedColor: _primary, secondary: _secondary),
      useMaterial3: true,
    );

    // _darkTheme = ThemeData.dark().copyWith(
    //   primaryColor: _primary,
    //   colorScheme: const ColorScheme.dark()
    //       .copyWith(primary: _primary, secondary: _secondary),
    //   elevatedButtonTheme: _elevatedButtonThemeData,
    //   floatingActionButtonTheme: _floatingActionButtonThemeData,
    //   inputDecorationTheme: _inputDecorationTheme,
    //   textTheme: _textTheme(ThemeData(brightness: Brightness.dark).textTheme),
    //   tabBarTheme: _tabBarTheme,
    //   appBarTheme: _appBarTheme,
    //   iconTheme: _iconThemeData,
    //   scaffoldBackgroundColor: _bgColorDark,
    //   canvasColor: _bgColorSuppDark,
    // );
  }
}
