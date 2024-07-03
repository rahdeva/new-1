import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/player/player_controller.dart';
import '/resources/resources.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<PlayerController>(
          builder: (controller) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Selamat Datang",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 32,
                        color: AppColors.black,
                        fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Slider(
                    min: 0,
                    max: controller.duration.inSeconds.toDouble(),
                    value: controller.position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await controller.audioPlayer.seek(position);

                      await controller.audioPlayer.resume();
                    }
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.formatDuration(
                            controller.position
                          )
                        ),
                        Text(
                          controller.formatDuration(
                            controller.duration - controller.position
                          )
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      icon: Icon(
                        controller.isPlaying ? Icons.pause : Icons.play_arrow
                      ),
                      iconSize: 50,
                      onPressed: () async {
                        if(controller.isPlaying){
                          await controller.audioPlayer.pause();
                        } else{
                          await controller.audioPlayer.play(
                            UrlSource(controller.url)
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

