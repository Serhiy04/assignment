import 'package:assignment/core/decorations/app_colors.dart';
import 'package:assignment/core/decorations/app_text_styles.dart';
import 'package:assignment/core/decorations/symbols.dart';
import 'package:assignment/core/generated/assets/assets.gen.dart';
import 'package:assignment/features/presenter/ui/screens/home_screen/widgets/crypto_list.dart';
import 'package:assignment/features/presenter/ui/widgets/nav_bars/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      backgroundColor: AppColors.blue879,
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: _buildHeader(context)),
              const CryptoList(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 60, 30, 65),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildText(
            content: 'c2',
            style: AppTextStyles.s18fw700(),
          ),
          const SizedBox(height: 20),
          _buildTotalCryptoText(
            content: 'Total crypto ',
            style: Theme.of(context).textTheme.subtitle2,
            imagePath: Assets.images.arrows.path,
          ),
          const SizedBox(height: 5),
          _buildEuroTextSpan(context,
              content: '14.200.122',
              style: Theme.of(context).textTheme.headline2),
          const SizedBox(height: 30),
          _buildText(
            content: 'ROI',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 5),
          _builPercentTextSpan(
            context,
            content: '31.39',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 30),
          _buildText(
            content: 'ROI last 24h ${Symbols.euroSymbol}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 5),
          _buildEuroTextSpan(
            context,
            content: '12.200',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }

  Widget _buildText({required String content, TextStyle? style}) {
    return Text(
      content,
      style: style,
    );
  }

  Widget _buildTotalCryptoText(
      {required String content, TextStyle? style, String? imagePath}) {
    return Row(
      children: [
        _buildText(
          content: content,
          style: style,
        ),
        if (imagePath != null) const SizedBox(width: 7),
        if (imagePath != null)
          Image.asset(
            imagePath,
            width: 12,
            height: 9,
          ),
      ],
    );
  }

  Widget _buildEuroTextSpan(BuildContext context,
      {required String content, TextStyle? style}) {
    return Text.rich(
      TextSpan(style: style, children: [
        TextSpan(
          text: Symbols.euroSymbol,
          style: style?.copyWith(
              color: AppColors.whiteFFF.withOpacity(0.5),
              fontWeight: FontWeight.w100),
        ),
        TextSpan(
          text: ' $content',
          style: style?.copyWith(fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }

  Widget _builPercentTextSpan(BuildContext context,
      {required String content, TextStyle? style}) {
    return Text.rich(
      TextSpan(
        style: style,
        children: [
          TextSpan(
            text: '$content ',
            style: style?.copyWith(fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: '%',
            style: style?.copyWith(
                color: AppColors.whiteFFF.withOpacity(0.5),
                fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
