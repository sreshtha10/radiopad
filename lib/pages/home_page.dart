import 'package:flutter/material.dart';
import 'package:radiopad/utils/all_util.dart';
import 'package:velocity_x/velocity_x.dart';
import '../model/radio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MyRadio> radios = myRadios;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(colors: [
            AllColors.primaryColor,
            AllColors.primaryColor2,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight))
              .make(),
          AppBar(
            title: "RADIOPAD".text.xl4.bold.white.make().shimmer(
                primaryColor: Vx.purple300, secondaryColor: Colors.transparent),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          ).h(100.0).p16(),
          VxSwiper.builder(
              itemCount: radios!.length,
              aspectRatio: 1.0,
              itemBuilder: (context, index) {
                final rad = radios![index];
                return VxBox(child: ZStack([]))
                    .bgImage(DecorationImage(
                    image: NetworkImage(rad.image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken)))
                    .withRounded(value: 40.0)
                    .make()
                    .p16()
                    .centered();
              })
        ],
      ),
    );

  }
}
