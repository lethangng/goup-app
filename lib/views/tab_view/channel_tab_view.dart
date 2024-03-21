import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/tab_view_models/channel_tabs/channel_tab_view_model.dart';
import 'home_tabs/exam_tab.dart';
import 'home_tabs/linh_vat_tab.dart';

class ChannelTabView extends StatelessWidget {
  ChannelTabView({super.key});
  final ChannelTabViewModel channelTabViewModel =
      Get.put(ChannelTabViewModel());

  @override
  Widget build(BuildContext context) {
    final appBarHeight = AppBar().preferredSize.height;
    final size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      backgroundColor: const Color(0xFF201E1F),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFFF9055).withOpacity(0.15),
              const Color(0xFF000000).withOpacity(0),
              const Color(0xFF3371DB).withOpacity(0.15),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: DefaultTabController(
          length: channelTabViewModel.listTap.length,
          child: NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height),
                        Container(
                          alignment: Alignment.center,
                          height: appBarHeight,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Color(0xFF353542),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Kênh của tôi',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 13),
                        Container(
                          width: size.width * 0.2,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            'assets/images/avatar-2.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '@jbtest',
                              style: TextStyle(color: Colors.white),
                            ),
                            SvgPicture.asset(
                                'assets/icons/tick-circle-icon.svg')
                          ],
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              columnInfo(title: 'Lượt thi', value: '25.1k'),
                              columnInfo(title: 'Followers', value: '15.6k'),
                              columnInfo(title: 'Thích', value: '10.2k'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            button(title: 'Sửa hồ sơ', event: () {}),
                            const SizedBox(width: 8),
                            button(title: 'Thêm Linh vật AI', event: () {}),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                const SizedBox(height: 16),
                TabBar(
                  controller: channelTabViewModel.tabController,
                  isScrollable: false,
                  tabs: channelTabViewModel.listTap,
                  physics: const BouncingScrollPhysics(),
                  labelColor: ColorApp.colorOrange,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: ColorApp.colorOrange,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: channelTabViewModel.tabController,
                    children: [
                      LinhVatTab(),
                      Examtab(),
                      Container(
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget button({required String title, required event}) {
    return ElevatedButton(
      onPressed: event,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF312E2E),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 10,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ).copyWith(
        elevation: ButtonStyleButton.allOrNull(0.0),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget columnInfo({required String title, required String value}) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
