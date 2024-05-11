import 'package:community/config/icons/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuildListCardItemWidget extends StatelessWidget {
  final int index;
  final String username;
  const BuildListCardItemWidget({
    required this.index,
    required this.username,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('点击了消息, $index');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      SvgIcon.DINGS,
                      width: 52.w,
                      height: 52.w,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        height: 14.w,
                        alignment: Alignment.center,
                        constraints: BoxConstraints(minWidth: 14.w),
                        decoration: BoxDecoration(
                            color: const Color(0xffF44336),
                            borderRadius: BorderRadius.circular(14)),
                        child: Text(
                          index.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            height: 0,
                            leadingDistribution: TextLeadingDistribution.even,
                          ),
                        ),
                      ))
                ],
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            username,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff0B1526),
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5),
                          ),
                          const Text(
                            '14:23',
                            style: TextStyle(
                                color: Color(0xffB1B4C3),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      const Text(
                        '亲爱的同学您好，为了维护您的权益，我亲爱的同学您好，为了维护您的权益，我们…',
                        softWrap: true,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff8D93A6)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
