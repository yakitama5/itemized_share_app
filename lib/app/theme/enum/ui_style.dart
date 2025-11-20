import 'package:flutter/material.dart';

enum UIStyle {
  system,
  android,
  ios;

  TargetPlatform? get platform => switch (this) {
    UIStyle.system => null,
    UIStyle.android => TargetPlatform.android,
    UIStyle.ios => TargetPlatform.iOS,
  };

  IconData get iconData => switch (this) {
    UIStyle.system => Icons.settings,
    UIStyle.android => Icons.android,
    UIStyle.ios => Icons.apple,
  };
}
