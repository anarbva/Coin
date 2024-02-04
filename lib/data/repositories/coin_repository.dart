

import 'package:coin/data/coin/models/coin_model.dart';
import 'package:coin/data/services/coin_api_services.dart';

class CoinRepository {
  final CoinApiServices _coinApiServices = CoinApiServices();

  Future<CoinModel>getCurrencyRate(String currency)async{
    return _coinApiServices.getCurrencyRate(currency);
  }
}