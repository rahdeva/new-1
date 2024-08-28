import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';
import 'package:tembang_bali/feature/player/player_controller.dart';
import 'package:tembang_bali/feature/player/widgets/bottom_player_widget.dart';
import '/resources/resources.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<PlayerController>(
        builder: (controller){
          return PopScope(
            canPop: true,
            onPopInvoked: (didPop) async {
              await controller.audioPlayer.stop();
            },
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: GestureDetector(
                      onTap: () async {
                        await controller.audioPlayer.pause();
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          const HeroIcon(
                            HeroIcons.arrowLongLeft,
                            style: HeroIconStyle.outline, // Outlined icons are used by default.
                            color: Colors.black,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Kembali',
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        AppImages.icTitlePlayer.image(),
                        Container(
                          width: 70.w,
                          margin: const EdgeInsets.only(left: 24),
                          child: Text(
                            "${controller.songData?.title ?? "-"} Audio",
                            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                              
                            ),
                            maxLines: 2,
                            softWrap: true,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 450,
                    margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: StreamBuilder<Duration>(
                      stream: controller.audioPlayer.onPositionChanged,
                      builder: (context, snapshot) {
                        return ScrollablePositionedList.builder(
                          itemCount: controller.lyrics.length,
                          itemBuilder: (context, index) {
                            Duration lyricDuration = controller.lyrics[index].timeStamp;
                            bool isLyricAfterCurrentTime = 
                              lyricDuration.inSeconds > controller.position.inSeconds;
                            
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text(
                                controller.lyrics[index].words,
                                style: controller.textSize == TextSize.medium
                                ? Theme.of(context).textTheme.displayMedium!.copyWith(
                                    color: isLyricAfterCurrentTime ? Colors.grey : Colors.black,
                                    fontWeight: FontWeight.w500
                                  )
                                : controller.textSize == TextSize.big
                                  ? Theme.of(context).textTheme.displayLarge!.copyWith(
                                      fontSize: 28,
                                      color: isLyricAfterCurrentTime ? Colors.grey : Colors.black,
                                      fontWeight: FontWeight.w500
                                    )
                                  : Theme.of(context).textTheme.headlineMedium!.copyWith(
                                      color: isLyricAfterCurrentTime ? Colors.grey : Colors.black,
                                      fontWeight: FontWeight.w500
                                    )
                              ),
                            );
                          },
                          itemScrollController: controller.itemScrollController,
                          scrollOffsetController: controller.scrollOffsetController,
                          itemPositionsListener: controller.itemPositionsListener,
                          scrollOffsetListener: controller.scrollOffsetListener,
                        );
                      }
                    ),
                  )
                ],
              ),
              floatingActionButton: BottomPlayerWidget(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Slider(
                        min: 0,
                        max: controller.duration.inSeconds.toDouble(),
                        value: controller.position.inSeconds.toDouble(),
                        onChanged: (value) async {
                          final position = Duration(seconds: value.toInt());
                          await controller.audioPlayer.seek(position);
                  
                          await controller.audioPlayer.resume();
                        },
                        thumbColor: AppColors.black,
                        inactiveColor: AppColors.grey,
                        activeColor: AppColors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              controller.formatDuration(
                                controller.position
                              ),
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: AppColors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              controller.formatDuration(
                                controller.duration - controller.position
                              ),
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: AppColors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () => controller.setTextSize(),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: AppColors.white,
                              child: Text(
                                "Aa",
                                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: AppColors.black,
                            child: IconButton(
                              icon: HeroIcon(
                                controller.isPlaying ? HeroIcons.stop : HeroIcons.play,
                                style: HeroIconStyle.solid,
                                color: Colors.white,
                                size: 35,
                              ),
                              iconSize: 35,
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
                          ),
                          InkWell(
                            onTap: () => controller.setLoop(),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: AppColors.white,
                              child: HeroIcon(
                                HeroIcons.arrowPath,
                                style: HeroIconStyle.solid, // Outlined icons are used by default.
                                color: controller.isLoop ? AppColors.black : AppColors.grey,
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            ),
          );
        }
      ),
    );
  }
}

