import 'package:bot_toast/bot_toast.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import '../../core/data/repository/shared_prefrence_repository.dart';
import '../../core/services/connectivity_service.dart';
import 'colors.dart';

void customLoader() => BotToast.showCustomLoading(toastBuilder: (context) {
      return Container(
        decoration: BoxDecoration(
            color: AppColors.persimmonColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        width: screenWidth(4),
        height: screenWidth(4),
        child: SpinKitCircle(
          color: AppColors.blackColor,
          size: screenWidth(8),
        ),
      );
    });

double screenWidth(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.width / percent;
  else
    return Get.size.height / percent;
}

double screenHeight(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.height / percent;
  else
    return Get.size.width / percent;
}

Locale getLocal() {
  String langCode = storage.getAppLanguage();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else
    return Locale('ar', 'SA');
}

void changeLanguage(String code) {
  storage.setAppLanguage(code);
  Get.updateLocale(getLocal());
}

SharedPrefrenceRepository get storage => Get.find<SharedPrefrenceRepository>();
ConnectivitySerivce get connectivitySerivce => Get.find<ConnectivitySerivce>();
Connectivity get connectivity => Get.find<Connectivity>();

bool isOnline = true;
