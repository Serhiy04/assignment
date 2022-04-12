import 'package:assignment/core/decorations/app_colors.dart';
import 'package:assignment/core/generated/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          color: AppColors.blue3C7,
          height: 120,
        ),
        Positioned(
          bottom: 40,
          child: _buildCube(),
        ),
        _buildContent(),
      ],
    );
  }

  Widget _buildCube() {
    return Image.asset(
      Assets.images.cube.path,
    );
  }

  Widget _buildIcon({required String icon, required int index}) {
    final isActive = _currentIndex == index;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 42,
          width: 51,
          decoration: BoxDecoration(
            color: isActive ? AppColors.blueA7D : null,
            borderRadius: BorderRadius.circular(9),
            gradient: isActive
                ? LinearGradient(
                    colors: [
                      AppColors.blueA7D.withOpacity(0.65),
                      AppColors.blueA7D,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : null,
          ),
        ),
        Image.asset(
          icon,
          height: 20,
          width: 23,
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      color: Colors.transparent,
      height: 110,
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconDetector(icon: Assets.images.home.path, index: 0),
          _buildIconDetector(icon: Assets.images.activity.path, index: 1),
          _buildIconDetector(icon: Assets.images.profile.path, index: 2),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: _buildFloatingButton(onTap: () {}),
          ),
        ],
      ),
    );
  }

  Widget _buildIconDetector({required String icon, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: _buildIcon(icon: icon, index: index),
    );
  }

  Widget _buildFloatingButton({required Function() onTap}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black000,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.whiteFFF.withOpacity(0.6),
            spreadRadius: 7,
            blurRadius: 10,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onTap,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.arrow_upward,
              color: AppColors.whiteFFF,
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
