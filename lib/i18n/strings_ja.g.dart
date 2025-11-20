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
	late final TranslationsExceptionsJa exceptions = TranslationsExceptionsJa.internal(_root);
	late final TranslationsMaintenanceJa maintenance = TranslationsMaintenanceJa.internal(_root);
	late final TranslationsTaskJa task = TranslationsTaskJa.internal(_root);
	late final TranslationsUpgraderJa upgrader = TranslationsUpgraderJa.internal(_root);
}

// Path: exceptions
class TranslationsExceptionsJa {
	TranslationsExceptionsJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '(deleted) {削除済です。} (updateTargetNotFound) {保存に失敗しました、あらためて操作を行ってください。}'
	String businessException({required BusinessExceptionType context}) {
		switch (context) {
			case BusinessExceptionType.deleted:
				return '削除済です。';
			case BusinessExceptionType.updateTargetNotFound:
				return '保存に失敗しました、あらためて操作を行ってください。';
		}
	}

	late final TranslationsExceptionsErrorMessageJa errorMessage = TranslationsExceptionsErrorMessageJa.internal(_root);
}

// Path: maintenance
class TranslationsMaintenanceJa {
	TranslationsMaintenanceJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMaintenanceCommonJa common = TranslationsMaintenanceCommonJa.internal(_root);
}

// Path: task
class TranslationsTaskJa {
	TranslationsTaskJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsTaskAnalyzePageJa analyzePage = TranslationsTaskAnalyzePageJa.internal(_root);
}

// Path: upgrader
class TranslationsUpgraderJa {
	TranslationsUpgraderJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUpgraderCommonJa common = TranslationsUpgraderCommonJa.internal(_root);
}

// Path: exceptions.errorMessage
class TranslationsExceptionsErrorMessageJa {
	TranslationsExceptionsErrorMessageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '予期せぬエラーが発生しました。'
	String get unexpected => '予期せぬエラーが発生しました。';
}

// Path: maintenance.common
class TranslationsMaintenanceCommonJa {
	TranslationsMaintenanceCommonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMaintenanceCommonForceUpdateDialogJa forceUpdateDialog = TranslationsMaintenanceCommonForceUpdateDialogJa.internal(_root);
	late final TranslationsMaintenanceCommonUpdatePossibleDialogJa updatePossibleDialog = TranslationsMaintenanceCommonUpdatePossibleDialogJa.internal(_root);
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

// Path: upgrader.common
class TranslationsUpgraderCommonJa {
	TranslationsUpgraderCommonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUpgraderCommonForceUpdateDialogJa forceUpdateDialog = TranslationsUpgraderCommonForceUpdateDialogJa.internal(_root);
	late final TranslationsUpgraderCommonUpdatePossibleDialogJa updatePossibleDialog = TranslationsUpgraderCommonUpdatePossibleDialogJa.internal(_root);
}

// Path: maintenance.common.forceUpdateDialog
class TranslationsMaintenanceCommonForceUpdateDialogJa {
	TranslationsMaintenanceCommonForceUpdateDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？'
	String get message => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';

	/// ja: 'ストアを開く'
	String get navigateToStore => 'ストアを開く';
}

// Path: maintenance.common.updatePossibleDialog
class TranslationsMaintenanceCommonUpdatePossibleDialogJa {
	TranslationsMaintenanceCommonUpdatePossibleDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。'
	String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';

	/// ja: 'ストアを開く'
	String get navigateToStore => 'ストアを開く';
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

// Path: upgrader.common.forceUpdateDialog
class TranslationsUpgraderCommonForceUpdateDialogJa {
	TranslationsUpgraderCommonForceUpdateDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？'
	String get message => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';

	/// ja: 'ストアを開く'
	String get navigateToStore => 'ストアを開く';
}

// Path: upgrader.common.updatePossibleDialog
class TranslationsUpgraderCommonUpdatePossibleDialogJa {
	TranslationsUpgraderCommonUpdatePossibleDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。'
	String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';

	/// ja: 'ストアを開く'
	String get navigateToStore => 'ストアを開く';
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
			'exceptions.businessException' => ({required BusinessExceptionType context}) { switch (context) { case BusinessExceptionType.deleted: return '削除済です。'; case BusinessExceptionType.updateTargetNotFound: return '保存に失敗しました、あらためて操作を行ってください。'; } }, 
			'exceptions.errorMessage.unexpected' => '予期せぬエラーが発生しました。',
			'maintenance.common.forceUpdateDialog.message' => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？',
			'maintenance.common.forceUpdateDialog.navigateToStore' => 'ストアを開く',
			'maintenance.common.updatePossibleDialog.message' => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。',
			'maintenance.common.updatePossibleDialog.navigateToStore' => 'ストアを開く',
			'task.analyzePage.title' => 'ふりかえり',
			'task.analyzePage.purchaseRate' => '購入率',
			'task.analyzePage.purchased' => '購入済',
			'task.analyzePage.format.fraction' => ({required int molecule, required int denominator}) => '${molecule}/${denominator}',
			'task.analyzePage.format.month' => ({required int month}) => '${month}月',
			'task.analyzePage.totalPrice' => '合計金額',
			'upgrader.common.forceUpdateDialog.message' => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？',
			'upgrader.common.forceUpdateDialog.navigateToStore' => 'ストアを開く',
			'upgrader.common.updatePossibleDialog.message' => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。',
			'upgrader.common.updatePossibleDialog.navigateToStore' => 'ストアを開く',
			_ => null,
		};
	}
}

