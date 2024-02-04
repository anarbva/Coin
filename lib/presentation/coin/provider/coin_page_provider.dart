
import 'package:coin/data/coin/models/coin_model.dart';
import 'package:coin/data/repositories/coin_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coin_page_provider.g.dart';

@riverpod

class CoinPageNotifier extends _$CoinPageNotifier{
  @override
  Future<CoinModel>build(String currency) async{
    return await CoinRepository().getCurrencyRate(currency);
  }
}