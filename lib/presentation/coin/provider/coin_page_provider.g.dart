// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$coinPageNotifierHash() => r'f30efe73af1e5ac99d37b5cad735dcd9da4067d1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CoinPageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<CoinModel> {
  late final String currency;

  FutureOr<CoinModel> build(
    String currency,
  );
}

/// See also [CoinPageNotifier].
@ProviderFor(CoinPageNotifier)
const coinPageNotifierProvider = CoinPageNotifierFamily();

/// See also [CoinPageNotifier].
class CoinPageNotifierFamily extends Family<AsyncValue<CoinModel>> {
  /// See also [CoinPageNotifier].
  const CoinPageNotifierFamily();

  /// See also [CoinPageNotifier].
  CoinPageNotifierProvider call(
    String currency,
  ) {
    return CoinPageNotifierProvider(
      currency,
    );
  }

  @override
  CoinPageNotifierProvider getProviderOverride(
    covariant CoinPageNotifierProvider provider,
  ) {
    return call(
      provider.currency,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'coinPageNotifierProvider';
}

/// See also [CoinPageNotifier].
class CoinPageNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CoinPageNotifier, CoinModel> {
  /// See also [CoinPageNotifier].
  CoinPageNotifierProvider(
    String currency,
  ) : this._internal(
          () => CoinPageNotifier()..currency = currency,
          from: coinPageNotifierProvider,
          name: r'coinPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$coinPageNotifierHash,
          dependencies: CoinPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              CoinPageNotifierFamily._allTransitiveDependencies,
          currency: currency,
        );

  CoinPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.currency,
  }) : super.internal();

  final String currency;

  @override
  FutureOr<CoinModel> runNotifierBuild(
    covariant CoinPageNotifier notifier,
  ) {
    return notifier.build(
      currency,
    );
  }

  @override
  Override overrideWith(CoinPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CoinPageNotifierProvider._internal(
        () => create()..currency = currency,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        currency: currency,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CoinPageNotifier, CoinModel>
      createElement() {
    return _CoinPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CoinPageNotifierProvider && other.currency == currency;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, currency.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CoinPageNotifierRef on AutoDisposeAsyncNotifierProviderRef<CoinModel> {
  /// The parameter `currency` of this provider.
  String get currency;
}

class _CoinPageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CoinPageNotifier, CoinModel>
    with CoinPageNotifierRef {
  _CoinPageNotifierProviderElement(super.provider);

  @override
  String get currency => (origin as CoinPageNotifierProvider).currency;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
