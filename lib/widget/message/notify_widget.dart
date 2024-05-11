import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuildNotifyWidget extends StatelessWidget {
  final String label;
  final String svgData;
  const BuildNotifyWidget({
    super.key,
    required this.label,
    required this.svgData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            svgData,
            width: 60.w,
            height: 60.w,
          ),
        ),
        SizedBox(
          height: 8.w,
        ),
        Text(
          label,
          style: const TextStyle(color: Color(0xff8D93A6), fontSize: 14),
        )
      ],
    );
  }
}
