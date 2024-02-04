
import 'package:coin/data/coin/models/coin_model.dart';

class ClientCoinPageModel{
  final CoinModel coinModel;
  final String currency;
  final int index;

  ClientCoinPageModel({
    required this.coinModel, 
    required this.currency, 
    required this.index
    });
}