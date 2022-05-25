import 'package:alan_voice/alan_voice.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
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
  MyRadio _selectedRadio = myRadios[0];
  bool _isPlaying = false;




  @override
  void initState() {
    super.initState();

    setUpAlan();
    _audioPlayer.onPlayerStateChanged.listen((event) {
      if (event == PlayerState.PLAYING) {
        _isPlaying = true;
      } else {
        _isPlaying = false;
      }
      setState(() {
      });
    });
  }

  final AudioPlayer _audioPlayer = AudioPlayer();


  setUpAlan(){
    AlanVoice.addButton(
        "b919a9a76d3a9b59a85acf818c7762c72e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);
    AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }


  _handleCommand(Map<String,dynamic> response){
    switch(response['command']){
      case "play":
        play(_selectedRadio.url);
        break;
      case "stop":
        _audioPlayer.stop();
        break;
      default:
        break;
    }
  }

  play(String url)  {
    _audioPlayer.play(url);
    _selectedRadio = radios.firstWhere((element) => element.url == url);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
              itemCount: radios.length,
              aspectRatio: 1.0,
              itemBuilder: (context, index) {
                final rad = radios[index];
                return VxBox(
                        child: ZStack(
                  [
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: VxBox(
                        child: rad.category.text.uppercase.white.make().px16(),
                      )
                          .height(40)
                          .black
                          .alignCenter
                          .withRounded(value: 10)
                          .make(),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: VStack(
                        [
                          rad.name.text.xl3.white.bold.make(),
                          5.heightBox,
                          rad.tagline.text.sm.white.semiBold.make(),
                        ],
                        crossAlignment: CrossAxisAlignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: [
                        const Icon(
                          CupertinoIcons.play_circle,
                          color: Colors.white,
                        ),
                        10.heightBox,
                        "Double Tap to Play".text.gray300.make(),
                      ].vStack(),
                    )
                  ],
                  clip: Clip.antiAlias,
                ))
                    .clip(Clip.antiAlias)
                    .bgImage(DecorationImage(
                        image: NetworkImage(rad.image),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken)))
                    .withRounded(value: 60.0)
                    .border(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)
                    .make()
                    .onInkDoubleTap(() {
                  play(rad.url);
                }).p16();
              }).centered(),
          Align(
            alignment: Alignment.bottomCenter,
            child: [
              if (_isPlaying)
                "Playing now =  ${_selectedRadio.name} FM".text.makeCentered(),
              Icon(
                _isPlaying
                    ? CupertinoIcons.stop_circle
                    : CupertinoIcons.play_circle,
                color: Colors.white,
                size: 50,
              ).onInkTap(() {
                if (_isPlaying) {
                  _audioPlayer.stop();
                } else {
                  play(_selectedRadio.url);
                }
              })
            ].vStack(),
          ).p64()
        ],
        fit: StackFit.expand,
      ),
    );
  }
}
