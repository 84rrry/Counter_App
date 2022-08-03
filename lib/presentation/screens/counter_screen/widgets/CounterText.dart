import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../../logic/cubits/Counter/cubit/counter_cubit.dart';

class CounterText extends StatefulWidget {
  const CounterText({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterText> createState() => _CounterTextState();
}

class _CounterTextState extends State<CounterText>{
  late AnimationController _controller;

  @override
  void dispose() {
_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return ZoomIn(
      manualTrigger: true,
      controller: (controller)=>_controller=controller,
      child: Text(
        context.select((CounterCubit counterCubit) =>
            counterCubit.state.value.toString()),
        style: TextStyle(fontSize: 50, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
