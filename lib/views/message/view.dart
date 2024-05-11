import 'package:community/config/icons/icons.dart';
import 'package:community/config/icons/svg.dart';
import 'package:community/views/message/index.dart';
import 'package:community/widget/message/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FA),
      appBar: AppBar(
        // 设置导航栏标题
        title: Text(
          controller.title(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgIcon.SETTINGS,
              color: Theme.of(context).primaryColor,
            ),
            padding: const EdgeInsets.only(right: 16),
          )
        ],
        // 设置导航栏背景颜色
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 128.w,
            decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BuildNotifyWidget(
                    svgData: SvgIcon.REPLY,
                    label: AppLocalizations.of(context)!.message_reply),
                BuildNotifyWidget(
                    svgData: SvgIcon.SHARE,
                    label: AppLocalizations.of(context)!.message_share),
                BuildNotifyWidget(
                    svgData: SvgIcon.FAVOURITE,
                    label: AppLocalizations.of(context)!.message_favourite),
              ],
            ),
          ),
          SizedBox(
            height: 10.w,
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                height: double.infinity,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, index) {
                    return BuildListCardItemWidget(
                      index: index,
                      username: index == 0
                          ? AppLocalizations.of(context)!.message_username
                          : '卫慧杰， $index',
                    );
                  },
                  itemCount: 30,
                ),
              ))
        ],
      )),
    );
  }
}
