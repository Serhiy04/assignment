import 'package:assignment/core/decorations/app_colors.dart';
import 'package:flutter/material.dart';

class AnnNewSmallButton extends StatelessWidget {
  const AnnNewSmallButton({Key? key, required this.onTap}) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return buildButton(context);
  }

  Widget buildButton(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: onTap,
          child: _buildContent(context),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.blueB97, width: 2),
            color: AppColors.blue6AE.withOpacity(0.3),
          ),
        ),
        RotationTransition(
          turns: const AlwaysStoppedAnimation(-90 / 360),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: _buildText(
              context,
              content: 'Add New',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: AppColors.whiteFFF,
                    height: 1,
                  ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildText(BuildContext context,
      {required String content, TextStyle? style}) {
    return RichText(
      text: TextSpan(
        style: style,
        children: [
          TextSpan(
            text: '+',
            style: style?.copyWith(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: ' $content',
            style: style?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      softWrap: false,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
    );
  }
}
