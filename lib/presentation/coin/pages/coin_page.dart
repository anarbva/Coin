import 'dart:developer';
import 'dart:io';

import 'package:coin/data/coin/models/coin_model.dart';

import 'package:coin/presentation/coin/provider/coin_page_provider.dart';
import 'package:coin/utils/constants_datas.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoinPage extends StatefulWidget {
  
  const CoinPage({super.key,});
  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {

  final double _btcValue=1;
  

  String dropdownValue =currencyList.first;

  int _selectedItemIndex=(currencyList.length / 2).round();


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text(" 🤣 Coin Ticker",
        style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        ),
        ),

      body: Consumer(
        builder: (
          context, ref, child) {
             final currencyProvider = 
             ref.watch(CoinPageNotifierProvider(
              currencyList[_selectedItemIndex]));
        
        return switch (currencyProvider){
          AsyncError(:final error)=>Center(child: Text("Error: $error"),),
          AsyncData(value:final coinModel)=> Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12, 
                  ),
                  child: _buildText(coinModel),
                )),
                  ),
          ),
        Container(
           color: Colors.blueAccent,
           height: 200,
           width: double.infinity,
           child: Center(
            child:Platform.isIOS ? buildItemsForIOS(ref): buildItemsForAndroid(),),
        ),

        ],
      ),
          _=>const Center( child: CircularProgressIndicator()),
        };

          }, 
      ),
     

        
    );
  }
  
Widget _buildText(CoinModel coinModel) {
  
  return Text(
                  '$_btcValue BTC = ${coinModel.rate.toStringAsFixed(2)} ${getSelectCurrency()}'.toUpperCase(),
                textAlign: TextAlign.center,
                style:const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
            );
  } 

  void detectPlatform(){
    if(Platform.isIOS){
      log('isIos');
    } else  if(Platform.isAndroid){
      log("isAndroid");
    }
  }

Widget buildItemsForIOS(WidgetRef ref){
 return  CupertinoPicker(
  magnification: 1.22,
  squeeze: 1.2,
  useMagnifier: true,
  itemExtent: 32,
  scrollController: FixedExtentScrollController(
    initialItem: _selectedItemIndex,
  ),
  onSelectedItemChanged: (int selectedItem)async{
    setState(() {
      _selectedItemIndex = selectedItem;
    });
   
  },
   children:currencyList.map<Widget>(
    (currency)=>Center(
      child: Text(currency),
    )).toList(),


   );
}
 


  Widget buildItemsForAndroid(){

List<DropdownMenuItem<String>>items=[];

 for (var currency in currencyList){
      final dropdownMenuItem=DropdownMenuItem<String>(
        value: currency,
        child: Text(currency, 
        style:const  TextStyle(
          color: Colors.black
        ),),
      );
      
      items.add(dropdownMenuItem);
 }

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? value) {
        
       log('onChanged value=$value');
        setState(() {
          dropdownValue = value!;
        });
      },
      items:items,
    );

  }

  String getSelectCurrency(){
  if(Platform.isIOS){
    return currencyList[_selectedItemIndex];
  }else{
    return dropdownValue;
  }
}

}
 
    
  
  
  