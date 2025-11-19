///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsTaskJa task = TranslationsTaskJa.internal(_root);
}

// Path: task
class TranslationsTaskJa {
	TranslationsTaskJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsTaskAnalyzePageJa analyzePage = TranslationsTaskAnalyzePageJa.internal(_root);
}

// Path: task.analyzePage
class TranslationsTaskAnalyzePageJa {
	TranslationsTaskAnalyzePageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ふりかえり'
	String get title => 'ふりかえり';

	/// ja: '購入率'
	String get purchaseRate => '購入率';

	/// ja: '購入済'
	String get purchased => '購入済';

	late final TranslationsTaskAnalyzePageFormatJa format = TranslationsTaskAnalyzePageFormatJa.internal(_root);

	/// ja: '合計金額'
	String get totalPrice => '合計金額';
}

// Path: task.analyzePage.format
class TranslationsTaskAnalyzePageFormatJa {
	TranslationsTaskAnalyzePageFormatJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${molecule:int}/${denominator:int}'
	String fraction({required int molecule, required int denominator}) => '${molecule}/${denominator}';

	/// ja: '${month:int}月'
	String month({required int month}) => '${month}月';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'task.analyzePage.title' => 'ふりかえり',
			'task.analyzePage.purchaseRate' => '購入率',
			'task.analyzePage.purchased' => '購入済',
			'task.analyzePage.format.fraction' => ({required int molecule, required int denominator}) => '${molecule}/${denominator}',
			'task.analyzePage.format.month' => ({required int month}) => '${month}月',
			'task.analyzePage.totalPrice' => '合計金額',
			_ => null,
		};
	}
}

