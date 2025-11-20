import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff864b6f),
      surfaceTint: Color(0xff864b6f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd8eb),
      onPrimaryContainer: Color(0xff6b3457),
      secondary: Color(0xff864b6f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd8eb),
      onSecondaryContainer: Color(0xff6b3457),
      tertiary: Color(0xff884a6a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd8e8),
      onTertiaryContainer: Color(0xff6d3352),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff211a1d),
      onSurfaceVariant: Color(0xff4f4349),
      outline: Color(0xff81737a),
      outlineVariant: Color(0xffd3c2c9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e32),
      inversePrimary: Color(0xfffab1da),
      primaryFixed: Color(0xffffd8eb),
      onPrimaryFixed: Color(0xff370729),
      primaryFixedDim: Color(0xfffab1da),
      onPrimaryFixedVariant: Color(0xff6b3457),
      secondaryFixed: Color(0xffffd8eb),
      onSecondaryFixed: Color(0xff370729),
      secondaryFixedDim: Color(0xfffab1da),
      onSecondaryFixedVariant: Color(0xff6b3457),
      tertiaryFixed: Color(0xffffd8e8),
      onTertiaryFixed: Color(0xff380725),
      tertiaryFixedDim: Color(0xfffdb0d4),
      onTertiaryFixedVariant: Color(0xff6d3352),
      surfaceDim: Color(0xffe4d6db),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f5),
      surfaceContainer: Color(0xfff9eaef),
      surfaceContainerHigh: Color(0xfff3e4e9),
      surfaceContainerHighest: Color(0xffeddfe4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff572345),
      surfaceTint: Color(0xff864b6f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff96597e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff572345),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff96597e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff592341),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff995979),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff160f13),
      onSurfaceVariant: Color(0xff3e3339),
      outline: Color(0xff5c4f55),
      outlineVariant: Color(0xff776970),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e32),
      inversePrimary: Color(0xfffab1da),
      primaryFixed: Color(0xff96597e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff7b4265),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff96597e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff7b4265),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff995979),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7d4160),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd0c3c8),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f5),
      surfaceContainer: Color(0xfff3e4e9),
      surfaceContainerHigh: Color(0xffe7d9de),
      surfaceContainerHighest: Color(0xffdcced3),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4b193b),
      surfaceTint: Color(0xff864b6f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6d3659),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b193b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d3659),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4d1936),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff703654),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff34292f),
      outlineVariant: Color(0xff52464c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e32),
      inversePrimary: Color(0xfffab1da),
      primaryFixed: Color(0xff6d3659),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff532042),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d3659),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff532042),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff703654),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff551f3d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2b5ba),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffcedf2),
      surfaceContainer: Color(0xffeddfe4),
      surfaceContainerHigh: Color(0xffdfd1d6),
      surfaceContainerHighest: Color(0xffd0c3c8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffab1da),
      surfaceTint: Color(0xfffab1da),
      onPrimary: Color(0xff501e3f),
      primaryContainer: Color(0xff6b3457),
      onPrimaryContainer: Color(0xffffd8eb),
      secondary: Color(0xfffab1da),
      onSecondary: Color(0xff501e3f),
      secondaryContainer: Color(0xff6b3457),
      onSecondaryContainer: Color(0xffffd8eb),
      tertiary: Color(0xfffdb0d4),
      onTertiary: Color(0xff521d3b),
      tertiaryContainer: Color(0xff6d3352),
      onTertiaryContainer: Color(0xffffd8e8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff181115),
      onSurface: Color(0xffeddfe4),
      onSurfaceVariant: Color(0xffd3c2c9),
      outline: Color(0xff9c8d93),
      outlineVariant: Color(0xff4f4349),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeddfe4),
      inversePrimary: Color(0xff864b6f),
      primaryFixed: Color(0xffffd8eb),
      onPrimaryFixed: Color(0xff370729),
      primaryFixedDim: Color(0xfffab1da),
      onPrimaryFixedVariant: Color(0xff6b3457),
      secondaryFixed: Color(0xffffd8eb),
      onSecondaryFixed: Color(0xff370729),
      secondaryFixedDim: Color(0xfffab1da),
      onSecondaryFixedVariant: Color(0xff6b3457),
      tertiaryFixed: Color(0xffffd8e8),
      onTertiaryFixed: Color(0xff380725),
      tertiaryFixedDim: Color(0xfffdb0d4),
      onTertiaryFixedVariant: Color(0xff6d3352),
      surfaceDim: Color(0xff181115),
      surfaceBright: Color(0xff3f373b),
      surfaceContainerLowest: Color(0xff130c10),
      surfaceContainerLow: Color(0xff211a1d),
      surfaceContainer: Color(0xff251e21),
      surfaceContainerHigh: Color(0xff30282c),
      surfaceContainerHighest: Color(0xff3b3236),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffcfe8),
      surfaceTint: Color(0xfffab1da),
      onPrimary: Color(0xff431234),
      primaryContainer: Color(0xffbe7ca3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffcfe8),
      onSecondary: Color(0xff431234),
      secondaryContainer: Color(0xffbe7ca3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffcfe3),
      onTertiary: Color(0xff45122f),
      tertiaryContainer: Color(0xffc17c9d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff181115),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffead8df),
      outline: Color(0xffbeaeb4),
      outlineVariant: Color(0xff9b8c93),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeddfe4),
      inversePrimary: Color(0xff6c3558),
      primaryFixed: Color(0xffffd8eb),
      onPrimaryFixed: Color(0xff29001e),
      primaryFixedDim: Color(0xfffab1da),
      onPrimaryFixedVariant: Color(0xff572345),
      secondaryFixed: Color(0xffffd8eb),
      onSecondaryFixed: Color(0xff29001e),
      secondaryFixedDim: Color(0xfffab1da),
      onSecondaryFixedVariant: Color(0xff572345),
      tertiaryFixed: Color(0xffffd8e8),
      onTertiaryFixed: Color(0xff2a001a),
      tertiaryFixedDim: Color(0xfffdb0d4),
      onTertiaryFixedVariant: Color(0xff592341),
      surfaceDim: Color(0xff181115),
      surfaceBright: Color(0xff4b4246),
      surfaceContainerLowest: Color(0xff0b0609),
      surfaceContainerLow: Color(0xff231c1f),
      surfaceContainer: Color(0xff2d2629),
      surfaceContainerHigh: Color(0xff393034),
      surfaceContainerHighest: Color(0xff443b3f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffebf3),
      surfaceTint: Color(0xfffab1da),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfff5add6),
      onPrimaryContainer: Color(0xff1f0015),
      secondary: Color(0xffffebf3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xfff5add6),
      onSecondaryContainer: Color(0xff1f0015),
      tertiary: Color(0xffffebf1),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff9acd0),
      onTertiaryContainer: Color(0xff1f0012),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff181115),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfffeebf2),
      outlineVariant: Color(0xffcfbec5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeddfe4),
      inversePrimary: Color(0xff6c3558),
      primaryFixed: Color(0xffffd8eb),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfffab1da),
      onPrimaryFixedVariant: Color(0xff29001e),
      secondaryFixed: Color(0xffffd8eb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xfffab1da),
      onSecondaryFixedVariant: Color(0xff29001e),
      tertiaryFixed: Color(0xffffd8e8),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfffdb0d4),
      onTertiaryFixedVariant: Color(0xff2a001a),
      surfaceDim: Color(0xff181115),
      surfaceBright: Color(0xff574e52),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff251e21),
      surfaceContainer: Color(0xff362e32),
      surfaceContainerHigh: Color(0xff42393d),
      surfaceContainerHighest: Color(0xff4d4448),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
