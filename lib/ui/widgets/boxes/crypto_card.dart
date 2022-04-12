import 'package:assignment/core/decorations/app_colors.dart';
import 'package:assignment/core/decorations/symbols.dart';
import 'package:assignment/src/models/currency_model.dart';
import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({Key? key, required this.currency}) : super(key: key);

  final CurrencyModel currency;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 232,
        margin: const EdgeInsets.only(left: 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [
              AppColors.whiteFFF.withOpacity(0.9),
              AppColors.whiteFFF.withOpacity(0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.01, 0.8],
          ),
        ),
        child: _buildContent(context));
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._buildheader(context),
          const Spacer(),
          _buildFooter(context),
        ],
      ),
    );
  }

  List<Widget> _buildheader(BuildContext context) {
    return [
      _buildText(
        content: currency.currencyName ?? '',
        style: Theme.of(context).textTheme.headline6,
      ),
      const SizedBox(height: 6),
      _buildEuroTextSpan(
        context,
        content: currency.currencyTitleValue ?? '',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      const SizedBox(height: 6),
      _buildText(
        content: 'Holdings',
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: AppColors.blue879.withOpacity(0.2),
            ),
      ),
    ];
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (currency.image != null)
          Image.asset(
            currency.image ?? '',
            height: 40,
            width: 40,
          ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '+ ',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AppColors.green849),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildEuroTextSpan(
              context,
              content: currency.currencyValue ?? '',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 3),
            _buildEuroTextSpan(
              context,
              content: currency.currencyChanging ?? '',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AppColors.green849),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildText({required String content, TextStyle? style}) {
    return Text(
      content,
      style: style,
    );
  }

  Widget _buildEuroTextSpan(BuildContext context,
      {required String content, TextStyle? style}) {
    return Text.rich(
      TextSpan(style: style, children: [
        TextSpan(
          text: Symbols.euroSymbol,
          style: style?.copyWith(fontWeight: FontWeight.w100),
        ),
        TextSpan(
          text: ' $content',
          style: style?.copyWith(fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
