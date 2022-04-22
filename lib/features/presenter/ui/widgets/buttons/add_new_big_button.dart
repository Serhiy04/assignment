import 'package:assignment/core/decorations/app_colors.dart';
import 'package:flutter/material.dart';

class AddNewBigButton extends StatelessWidget {
  const AddNewBigButton({Key? key, required this.onTap}) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        onTap: onTap,
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black202.withOpacity(0.12),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: _buildText(context),
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLine(context, text: '+'),
        _buildLine(context, text: 'Add'),
        _buildLine(context, text: 'New'),
      ],
    );
  }

  Widget _buildLine(BuildContext context, {required String text}) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            color: AppColors.whiteFFF,
          ),
    );
  }
}
