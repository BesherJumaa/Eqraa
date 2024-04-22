import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/color.dart';
import '../constant/imageassets.dart';
import 'status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final bool? shimmer;
  final double? width;
  final double? height;
  final double? imageWidth;
  final double? imageHeight;
  final void Function()? onOffline;

  const HandlingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
    this.height,
    this.width,
    this.imageHeight,
    this.imageWidth,
    this.onOffline,
    this.shimmer,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return statusRequest == StatusRequest.loading
        ? SizedBox(
            height: height,
            width: width,
            child: Center(
              child: shimmer == true
                  ? Shimmer.fromColors(
                      baseColor: AppColor.primaryColor,
                      highlightColor: AppColor.secondColor,
                      child: widget)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("48".tr),
                        ),
                        Center(
                          child: Lottie.asset(
                            width: imageWidth,
                            height: imageHeight,
                            AppImageAssets.loading,
                          ),
                        ),
                      ],
                    ),
            ),
          )
        : statusRequest == StatusRequest.offlineFailure
            ? SizedBox(
                height: height,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("69".tr),
                    ),
                    Center(child: Lottie.asset(AppImageAssets.offline)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor),
                      onPressed: onOffline,
                      child: const Icon(
                        Icons.refresh_outlined,
                        color: AppColor.white,
                      ),
                    ),
                  ],
                ),
              )
            : statusRequest == StatusRequest.failure
                ? SizedBox(
                    height: height,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("49".tr),
                        ),
                        Center(
                          child: Lottie.asset(AppImageAssets.noData,
                              repeat: false),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primaryColor),
                          onPressed: onOffline,
                          child: const Icon(
                            Icons.refresh_outlined,
                            color: AppColor.white,
                          ),
                        ),
                      ],
                    ),
                  )
                : statusRequest == StatusRequest.serverFailure
                    ? Center(
                        child: Lottie.asset(AppImageAssets.server),
                      )
                    : statusRequest == StatusRequest.none
                        ? widget
                        : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final void Function()? onOffline;

  const HandlingDataRequest(
      {super.key,
      required this.statusRequest,
      required this.widget,
      this.onOffline});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return statusRequest == StatusRequest.loading
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("48".tr),
              ),
              Center(
                child: Lottie.asset(AppImageAssets.loading),
                // CoolAlert.show(context: Get.overlayContext!, type: CoolAlertType.loading,)
              ),
            ],
          )
        : statusRequest == StatusRequest.offlineFailure
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("69".tr),
                  ),
                  Center(child: Lottie.asset(AppImageAssets.offline)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor),
                    onPressed: onOffline,
                    child: const Icon(
                      Icons.refresh_outlined,
                      color: AppColor.white,
                    ),
                  ),
                ],
              )
            : statusRequest == StatusRequest.serverFailure
                ? Center(
                    child: Lottie.asset(AppImageAssets.server),
                  )
                : statusRequest == StatusRequest.failure
                    ? widget
                    : widget;
  }
}
