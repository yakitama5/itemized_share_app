import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itemized_share_app/app/core/state/loading_provider.dart';
import 'package:nested/nested.dart';

final class LoaderOverlay extends SingleChildStatelessWidget {
  const LoaderOverlay({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Stack(
      children: [
        child ?? const SizedBox.shrink(),
        Consumer(
          builder: (context, ref, child) {
            final loading = ref.watch(loadingProvider);
            if (!loading) {
              return const SizedBox.shrink();
            }

            return const ColoredBox(
              color: Colors.black54,
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          },
        ),
      ],
    );
  }
}
