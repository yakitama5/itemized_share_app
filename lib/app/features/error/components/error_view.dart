import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itemized_share_app/gen/assets/assets.gen.dart';
import 'package:lottie/lottie.dart';

final class ErrorView extends StatelessWidget {
  const ErrorView(this.error, this.stackTrace, {super.key});

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          Lottie.asset(
            Assets.lottie.error,
            height: 120,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.color(const [
                  'Shape Layer 1',
                  '**',
                ], value: colorScheme.error),
              ],
            ),
          ),
          Text(
            error.toString(),
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
