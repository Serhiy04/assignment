import 'dart:math';

import 'package:assignment/core/generated/assets/assets.gen.dart';
import 'package:assignment/src/models/currency_model.dart';
import 'package:assignment/ui/widgets/boxes/crypto_card.dart';
import 'package:assignment/ui/widgets/buttons/add_new_big_button.dart';
import 'package:assignment/ui/widgets/buttons/add_new_small_button.dart';
import 'package:flutter/material.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({Key? key}) : super(key: key);

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  List<CurrencyModel> currencies = [
    CurrencyModel(
      id: 1,
      currencyName: 'Bitcoin',
      currencyTitleValue: '12.200.122',
      currencyValue: '52.122.34',
      currencyChanging: '2.343',
      image: Assets.images.bitcoin.path,
    ),
    CurrencyModel(
      id: 2,
      currencyName: 'Ethereum',
      currencyTitleValue: '2.200.122',
      currencyValue: '2.120.21',
      currencyChanging: '210',
      image: Assets.images.ethereum.path,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 313,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: currencies.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 98, 0, 98),
              child: AddNewBigButton(
                onTap: () {
                  setState(() {
                    currencies.insert(0, generateModel());
                  });
                },
              ),
            );
          }
          if (index == currencies.length + 1) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 170, 40, 0),
              child: AnnNewSmallButton(
                onTap: () {
                  setState(() {
                    currencies.add(generateModel());
                  });
                },
              ),
            );
          }
          return CryptoCard(
            key: ValueKey(currencies[index - 1].id),
            currency: currencies[index - 1],
          );
        },
      ),
    );
  }

  CurrencyModel generateModel() {
    final random = Random();
    final id = currencies.length + 1;
    final model = CurrencyModel(
      id: id,
      currencyName: 'Random $id',
      currencyTitleValue: '2.200.122',
      currencyValue: '2.120.21',
      currencyChanging: random.nextInt(1000).toString(),
      image: Assets.images.currency.path,
    );
    return model;
  }
}
