import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, bool big = false}) : _big = big;

  final bool _big;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _big ? 'assets/logo/512x512_t.png' : 'assets/logo/256x256_t.png',
      package: 'dominium_commons',
      width: _big ? 128 : 64,
      height: _big ? 128 : 64,
    );
  }
}
