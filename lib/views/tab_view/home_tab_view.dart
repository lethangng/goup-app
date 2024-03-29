import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/tab_view_models/home_tav_view_model.dart';
import 'home_tabs/exam_tab.dart';
import 'home_tabs/hashtag_tab.dart';
import 'home_tabs/history_tab.dart';
import 'home_tabs/linh_vat_tab.dart';
import 'home_tabs/slacking_tab.dart';

class HomeTabView extends StatelessWidget {
  HomeTabView({super.key});
  final HomeTabViewModel homeTabViewModel = Get.find<HomeTabViewModel>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var appBarHeight = AppBar().preferredSize.height;
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/images/logo.png',
        ),
        automaticallyImplyLeading: false, // Khong show leading
        actions: [
          Visibility(
            visible: homeTabViewModel.isLogin.value,
            child: Container(
              height: size.width * 0.116,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: ColorApp.colorGrey6,
                ),
              ),
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () async {
                  homeTabViewModel.handleShowMenuBar();
                },
                icon: SvgPicture.asset(
                  'assets/icons/menu-icon.svg',
                  width: size.width * 0.056,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Visibility(
            visible: homeTabViewModel.isLogin.value == false,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: ColorApp.colorOrange,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'Đăng nhập',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Stack(
        children: [
          Container(
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
            child: Column(
              children: [
                SizedBox(
                  height: height + appBarHeight + 8,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: ColorApp.colorGrey7,
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  height: size.height * 0.06,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  decoration: BoxDecoration(
                    color: const Color(0xFF312E2E),
                    borderRadius: BorderRadius.circular(57),
                  ),
                  child: TextField(
                    cursorColor: ColorApp.colorGrey2,
                    style: const TextStyle(color: Colors.white),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      isDense: true, // Cho chu can giua theo chieu doc
                      hintText: 'Tìm kiếm',
                      hintStyle: const TextStyle(
                        color: ColorApp.colorGrey2,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      prefixIcon: Container(
                        width: 24,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/search-icon.svg',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  color: const Color(0xFF27211F),
                  child: DefaultTabController(
                    length: homeTabViewModel.listTap.length,
                    initialIndex: 0,
                    child: TabBar(
                      tabAlignment: TabAlignment.start,
                      controller: homeTabViewModel.tabController,
                      isScrollable: true,
                      tabs: homeTabViewModel.listTap,
                      physics: const BouncingScrollPhysics(),
                      labelColor: ColorApp.colorOrange,
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: ColorApp.colorOrange,
                      unselectedLabelColor: Colors.white,
                      // labelPadding: const EdgeInsets.symmetric(
                      //   horizontal: 20,
                      //   vertical: 12,
                      // ),
                      labelStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      // labelPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: homeTabViewModel.tabController,
                    children: [
                      Examtab(),
                      LinhVatTab(),
                      const SlackingTab(),
                      const HashtagTab(),
                      Examtab(),
                      const HistoryTab(),
                      Container(
                        child: const Center(
                          child: Text('Ok'),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text('Ok'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => Positioned(
              top: appBarHeight + height + 10,
              right: 0,
              child: AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: size.width * 0.65,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorApp.colorGrey8,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF121212).withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: const Offset(0, 0),
                        ),
                        BoxShadow(
                          color: const Color(0xFF121212).withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                        BoxShadow(
                          color: const Color(0xFF121212).withOpacity(0.13),
                          spreadRadius: 0,
                          blurRadius: 15,
                          offset: const Offset(0, 15),
                        ),
                        BoxShadow(
                          color: const Color(0xFF121212).withOpacity(0.08),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 34),
                        ),
                      ]),
                  height: homeTabViewModel.showMenuBar.value ? null : 0,
                  child: SizedBox(
                    height: size.height * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        rowMenuBarContainer(
                            title: 'Thông tin tài khoản',
                            icon: 'assets/icons/user-icon.svg'),
                        rowMenuBarContainer(
                            title: 'Bảng xếp hạng',
                            icon: 'assets/icons/ranking-icon.svg'),
                        rowMenuBarContainer(
                            title: 'Nhiệm vụ',
                            icon: 'assets/icons/nhiem-vu.svg'),
                        rowMenuBarContainer(
                            title: 'Thành tích',
                            icon: 'assets/icons/thanh-tich.svg'),
                        rowMenuBarContainer(
                          title: 'Hỏi đáp',
                          icon: 'assets/icons/messages-icon.svg',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget rowMenuBarContainer({required String title, required String icon}) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
