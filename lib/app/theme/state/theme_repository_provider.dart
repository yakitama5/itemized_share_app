import 'package:itemized_share_app/app/theme/repository/theme_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_repository_provider.g.dart';

@Riverpod(keepAlive: true)
ThemeRepository themeRepository(Ref ref) => ThemeRepository(ref);
