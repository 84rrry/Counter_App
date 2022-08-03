import 'package:counter_app/logic/cubits/Theme/theme_cubit.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/CounterText.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/PlasmaBackground.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/counterSlider.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().changeAppThemeMode();
            },
            icon:Icon(

              context.read<ThemeCubit>().state.themeMode==ThemeMode.light? Icons.dark_mode_outlined:Icons.light_mode,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          PlasmaBg(),
          Positioned(
            bottom: 50,
            child: CounterSlider(),
          ),
          Positioned(
            top: 60,
            child: Stack(alignment: Alignment.center, children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.6,
                  child: FlareActor(
                    'assets/Flares/Circle.flr',
                    animation: 'Alarm',
                  )),
              CounterText(),
            ]),
          )
        ],
      ),
    );
  }
}
