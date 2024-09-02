import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
    colors: [Colors.grey, Colors.grey, Colors.white, Colors.grey, Colors.grey],
    stops: [0.0, 0.35, 0.5, 0.65, 1.0],
  );

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: gradient,
      child: const SizedBox()
    );
  }

  static Widget listScreenShimmer({
    EdgeInsetsGeometry? margin,
    Axis direction = Axis.vertical,
    bool withTitle = false,
    Widget? listComponent,
    int? itemCount,
    double? height,
    Color? color,
  }) {
    return IgnorePointer(
      child: Container(
        margin: margin ?? (
          (direction == Axis.vertical)
          ? const EdgeInsets.fromLTRB(8, 16, 8, 0)
          : const EdgeInsets.fromLTRB(0, 16, 0, 0)),
        alignment: Alignment.centerLeft,
        child: ListView(
          shrinkWrap: true,
          children: [
            withTitle == true
            ? Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 16, left: 8, top: 8),
                child: boxComponent(
                  width: 120, 
                  height: 20,
                  borderRadius: 16,
                  color : color
                )
              )
            : const SizedBox(),
            SizedBox(
              height: height,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: direction,
                itemCount: itemCount ?? (
                  (direction == Axis.vertical)
                  ? 6
                  : 3
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                itemBuilder: (context, int index) {
                  return (listComponent == null)
                  ? listComponent1(direction: direction)
                  : listComponent;
                },
                separatorBuilder: (context, index) => (direction == Axis.vertical)
                ? const SizedBox(
                    height: 16
                  )
                : const SizedBox(
                    width: 16
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget customScreenShimmer({
    Widget customWidget = const SizedBox(),
  }) {
    return IgnorePointer(
      child: customWidget
    );
  }

  static Widget simpleShimmer() {
    return IgnorePointer(
      child: Column(
        children: [
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
          const SizedBox(height: 20),
          boxComponent(
            height: 35, 
            width: 100.w,
          ),
        ],
      )
    );
  }

  static Widget listComponent0({
    Axis direction = Axis.vertical,
    double height = 180,
    double? width,
    Color? color,
  }) {
    return boxComponent(
      height: height, 
      width: (width == null)
      ? (direction == Axis.vertical) 
        ? 100.w 
        : 80.w
      : width,
      color: color
    );
  }

  static Container listComponent1({
    int titleTextCount = 3,
    double borderRadiusContainer = 15,
    Color containerColor = Colors.white,
    double circleRadius = 30,
    Axis direction = Axis.vertical,
    Color? color,
  }) {
    return Container(
      width: (direction == Axis.vertical)
      ? 100.w
      : 80.w,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(
          borderRadiusContainer
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000E33).withOpacity(0.10),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 2),
          )
        ],
      ),
      padding: (direction == Axis.vertical)
      ? const EdgeInsets.symmetric(horizontal: 16, vertical: 24)
      : const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          const SizedBox(width: 8),
          circleComponent(radius: circleRadius),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boxComponent(
                height: 18, 
                width: (direction == Axis.vertical) ? 56.w : 48.w, 
                color: color
              ),
              titleTextCount > 1
              ? Column(
                  children: [
                    const SizedBox(height: 16),
                    boxComponent(
                      height: 12, 
                      width: (direction == Axis.vertical) ? 48.w : 36.w,
                      color: color
                    ),
                  ],
                )
              : const SizedBox(),
              titleTextCount > 2
              ? Column(
                  children: [
                    const SizedBox(height: 16),
                    boxComponent(
                      height: 10, 
                      width: (direction == Axis.vertical) ? 36.w : 24.w,
                      color: color
                    ),
                  ],
                )
              : const SizedBox(),
              titleTextCount > 3
              ? Column(
                  children: [
                    const SizedBox(height: 16),
                    boxComponent(
                      height: 8, 
                      width: (direction == Axis.vertical) ? 24.w : 16.w,
                      color: color
                    ),
                  ],
                )
              : const SizedBox()
            ],
          ),
        ],
      )
    );
  }

  // static Container listComponent2({
  //   int titleTextCount = 3,
  //   double borderRadiusContainer = 5,
  //   Color containerColor = Colors.white,
  //   double circleRadius = 30,
  //   Axis direction = Axis.vertical,
  //   Color? color,
  // }) {
  //   return Container(
  //     width: (direction == Axis.vertical)
  //     ? 100.w
  //     : 80.w,
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AppImages.imgListBGShimmer.image().image,
  //         fit: BoxFit.fill
  //       ),
  //       borderRadius: BorderRadius.circular(
  //         borderRadiusContainer
  //       ),
  //       boxShadow: [
  //         // BoxShadow(
  //         //   color: const Color(0xFF000E33).withOpacity(0.10),
  //         //   spreadRadius: 0,
  //         //   blurRadius: 10,
  //         //   offset: const Offset(0, 2),
  //         // )
  //       ],
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Container(
  //           height: 172,
  //           width: 100.w - 220,
  //           padding: const EdgeInsets.all(10),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.max,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               boxComponent(
  //                 height: 18, 
  //                 width: 24.w,
  //                 color: color
  //               ),
  //               Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   boxComponent(
  //                     height: 18, 
  //                     width: 36.w,
  //                     color: color
  //                   ),
  //                   const SizedBox(height: 8),
  //                   boxComponent(
  //                     height: 18, 
  //                     width: 24.w,
  //                     color: color
  //                   ),
  //                 ],
  //               ),
  //               boxComponent(
  //                 height: 18, 
  //                 width: 24.w,
  //                 color: color
  //               ),
  //             ],
  //           ),
  //         ),
  //         boxComponent(
  //           height: 172, 
  //           width: 150,
  //           color: color,
  //           borderRadius: 5
  //         ),
  //       ],
  //     )
  //   );
  // }
  
  static Widget boxComponent({
    double height = 35, 
    double width = double.infinity,
    double borderRadius = 8, 
    Color? color
  }) {
    return Shimmer.fromColors(
      baseColor: color ?? Colors.grey.shade300,
      highlightColor: Colors.white,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.white,
        ),
      ),
    );
  }

  static Widget circleComponent({
    double radius = 30, 
    Color? color
  }) {
    return Shimmer.fromColors(
      baseColor: color ?? Colors.grey.shade300,
      highlightColor: Colors.white,
      child: CircleAvatar(
        radius: radius,
      ),
    );
  }
}

