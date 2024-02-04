

import 'package:coin/data/coin/models/coin_model.dart';
import 'package:coin/data/services/%20network_services.dart';
import 'package:coin/utils/constants_datas.dart';

class CoinApiServices{ 

  Future<CoinModel>getCurrencyRate(String currency)async {
  
   var uri =  Uri.parse('${ApiKeys.url}/BTC/$currency');

   final data =  await NetworkServices.get(uri);

   final CoinModel coinModel = CoinModel.fromJson(data);

    return coinModel;
   
  }

 
}

