///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:itemized_share_app/app/core/exception/business_exception_type.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsExceptionsEn exceptions = _TranslationsExceptionsEn._(_root);
	@override late final _TranslationsMaintenanceEn maintenance = _TranslationsMaintenanceEn._(_root);
	@override late final _TranslationsTaskEn task = _TranslationsTaskEn._(_root);
	@override late final _TranslationsUpgraderEn upgrader = _TranslationsUpgraderEn._(_root);
}

// Path: exceptions
class _TranslationsExceptionsEn extends TranslationsExceptionsJa {
	_TranslationsExceptionsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String businessException({required BusinessExceptionType context}) {
		switch (context) {
			case BusinessExceptionType.deleted:
				return '削除済です。';
			case BusinessExceptionType.updateTargetNotFound:
				return '保存に失敗しました、あらためて操作を行ってください。';
		}
	}
}

// Path: maintenance
class _TranslationsMaintenanceEn extends TranslationsMaintenanceJa {
	_TranslationsMaintenanceEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

// Path: task
class _TranslationsTaskEn extends TranslationsTaskJa {
	_TranslationsTaskEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

// Path: upgrader
class _TranslationsUpgraderEn extends TranslationsUpgraderJa {
	_TranslationsUpgraderEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'exceptions.businessException' => ({required BusinessExceptionType context}) { switch (context) { case BusinessExceptionType.deleted: return '削除済です。'; case BusinessExceptionType.updateTargetNotFound: return '保存に失敗しました、あらためて操作を行ってください。'; } }, 
			'maintenance.hoge' => 'hoge',
			'task.hoge' => 'hoge',
			'upgrader.hoge' => 'hoge',
			_ => null,
		};
	}
}

