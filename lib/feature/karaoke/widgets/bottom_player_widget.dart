import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tembang_bali/resources/resources.dart';

class BottomPlayerWidget extends StatelessWidget {
  const BottomPlayerWidget({
    super.key, 
    required this.content, 
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      color: AppColors.white,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: content
    );
  }
}