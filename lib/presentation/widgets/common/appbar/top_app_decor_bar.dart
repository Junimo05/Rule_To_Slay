import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/router/router.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/presentation/widgets/tooth_clipper/zigzagclipper.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    bool canNavigateBack = router.canPop();

    return AppBar(
      leading: canNavigateBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                router.pop();
              },
            )
          : null,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(35),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                AssetImgs.mainBg,
                fit: BoxFit.cover,
              ),
            ),
            ClipPath(
              clipper:
                  ZigZagClipper(offset: 5, position: ZigZagPosition.bottom),
              child: Container(
                height: 23,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      title: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const <double>[0.0, 0.5],
            colors: <Color>[Colors.blue, Colors.white],
          ).createShader(bounds);
        },
        child: Text(
          'Rule To Slay',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          maxLines: 1,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
