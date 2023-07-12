import 'package:flutter/material.dart';
import 'package:kantin_new_mobile/constants/global_constants.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [mainColor,secondaryColorLight],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/baum-images.png'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(mainColorLight, BlendMode.colorBurn),
          ),
        ),
      ),
    );
  }
}