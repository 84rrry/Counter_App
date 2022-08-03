// Dummy Widget

import 'package:counter_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PlasmaBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
  decoration: BoxDecoration(
    color: Theme.of(context).backgroundColor,
    gradient: LinearGradient(
      tileMode: TileMode.mirror,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Theme.of(context).primaryColor,
         Theme.of(context).colorScheme.secondary,
   
      ],
      stops: [
        0,
        1,
      ],
    ),
    backgroundBlendMode: BlendMode.srcOver,
  ),
  child: PlasmaRenderer(
    type: PlasmaType.bubbles,
    particles: 27,
    color: Theme.of(context).particlesColor,
    blur: 0.16,
    size: 0.51,
    speed: 1.35,
    offset: 0,
    blendMode: BlendMode.screen,
    particleType: ParticleType.atlas,
    variation1: 0.31,
    variation2: 0.3,
    variation3: 0.13,
    rotation: 1.05,
  ),
);
  }
}
