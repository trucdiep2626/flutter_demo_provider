import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  const LoadingWidget({Key? key, this.width, this.height, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFEEEEEE),
      highlightColor: const Color(0xFFF5F5F5),
      child: Container(
        width: width ?? 80.0.w,
        height: height ?? 8.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 80),
          color: Colors.white,
        ),
      ),
    );
  }
}
