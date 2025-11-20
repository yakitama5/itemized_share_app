import 'package:flutter/material.dart';
import 'package:itemized_share_app/app/features/error/components/error_view.dart';
import 'package:itemized_share_app/i18n/strings.g.dart';

final class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, this.exception});

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ErrorView(
            exception ?? i18n.exceptions.errorMessage.unexpected,
            null,
          ),
        ),
      ),
    );
  }
}
