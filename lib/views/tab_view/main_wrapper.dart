import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';
import '../../view_models/tab_view_models/home_tav_view_model.dart';
import '../../view_models/tab_view_models/tab_view_model.dart';
import 'channel_tab_view.dart';
import 'home_tab_view.dart';
import 'notificaion_tab_view.dart';
import 'slacking_tab_view.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  final TabViewModel tabViewModel = Get.put(TabViewModel());
  final HomeTabViewModel homeTabViewModel = Get.put(HomeTabViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // cho mau cua bottomNavigationBar thanh trong suot
      backgroundColor: ColorApp.colorBlack4,
      body: PageView(
        onPageChanged: tabViewModel.animateToTab,
        controller: tabViewModel.pageController,
        physics: const BouncingScrollPhysics(),
        children: [
          HomeTabView(),
          ChannelTabView(),
          const SlackingTabView(),
          const NotificationTabView(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        notchMargin: 10,
        elevation: 0.0,
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              child: SvgPicture.asset(
                'assets/images/bottom-nav.svg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 80,
                margin: const EdgeInsets.only(top: 7),
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.create),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorApp.colorOrange3,
                        ),
                        height: 44,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/logo-bottom-icon.svg',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: homeTabViewModel.isLogin.value
                              ? ColorApp.colorOrange3
                              : ColorApp.colorGrey3,
                        ),
                        child: const Text(
                          'Tạo mới',
                          style: TextStyle(
                            color: ColorApp.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bottomAppBarItem(
                      context,
                      icon: 'assets/icons/home-icon.svg',
                      page: 0,
                      lable: 'Trang chủ',
                    ),
                    _bottomAppBarItem(
                      context,
                      icon: 'assets/icons/crown-icon.svg',
                      page: 1,
                      lable: 'Kênh của tôi',
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    _bottomAppBarItem(
                      context,
                      icon: 'assets/icons/book-icon.svg',
                      page: 2,
                      lable: 'Chưa xong',
                    ),
                    _bottomAppBarItem(
                      context,
                      icon: 'assets/icons/notificaion-icon.svg',
                      page: 3,
                      lable: 'Thông báo',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required lable}) {
    return Expanded(
      child: ZoomTapAnimation(
        onTap: () => tabViewModel.goToTab(page),
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                width: 24,
                height: 24,
                child: SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(
                    tabViewModel.currentPage.value == page
                        ? ColorApp.white
                        : ColorApp.colorGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                lable,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: tabViewModel.currentPage.value == page
                      ? ColorApp.white
                      : ColorApp.colorGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
