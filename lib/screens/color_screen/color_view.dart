import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imperio_task_two/screens/color_screen/color_screen_controller.dart';
import 'package:imperio_task_two/utils/math_utils.dart';

class ColorView extends GetView<ColorScreenController> {
  const ColorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getSize(20), vertical: getSize(2)),
          child: Column(
            children: [
              SizedBox(
                height: getSize(50),
              ),
              Stack(
                children: [
                  ListView.builder(
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          // color: controller.colorList[index],
                          height: getSize(100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: getSize(50),top: getSize(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(controller.colorText[index]),
                                    Obx(()=>Text(controller.colorNumber[controller.colorSelectedList[index]].toString()))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getSize(30),
                                //width: Get.width-getSize(100),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: controller.colorList.length,
                                    shrinkWrap: false,
                                    padding: EdgeInsets.zero,
                                    itemBuilder:
                                        (BuildContext context, int ind) {
                                      if (ind == 0) {
                                        return Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Obx(() => Flexible(
                                                      child: Container(
                                                        height: getSize(20),
                                                        width: getSize(30),
                                                        color: controller
                                                            .colorList[controller
                                                                .colorSelectedList[
                                                            index]],
                                                      ),
                                                    )),
                                                const Text(
                                                  "",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: getSize(30),
                                            ),
                                            GestureDetector(
                                              onTap: () =>
                                                  controller.onTap(index, ind),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Container(
                                                      margin: const EdgeInsets.only(
                                                          right: 20),
                                                      height: getSize(20),
                                                      width: getSize(30),
                                                      color: controller
                                                          .colorList[0],
                                                    ),
                                                  ),
                                                  Center(
                                                      child: Text(
                                                    controller.colorNumber[0]
                                                        .toString(),
                                                    style:
                                                        const TextStyle(fontSize: 10),
                                                  ))
                                                ],
                                              ),
                                            )
                                          ],
                                        );
                                      }
                                      return GestureDetector(
                                        onTap: () =>
                                            controller.onTap(index, ind),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.only(right: 20),
                                                //height: getSize(20),
                                                width: getSize(30),
                                                color:
                                                    controller.colorList[ind],
                                              ),
                                            ),
                                            Center(
                                                child: Text(
                                              controller.colorNumber[ind]
                                                  .toString(),
                                              style: const TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                              //SizedBox(height: getSize(20),)
                            ],
                          ),
                        );
                      }),
                  Container(
                    // height: Get.height-getSize(50),
                    width: getSize(30),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: ListView.builder(
                        itemCount: controller.colorList.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: getSize(100),
                                ),
                              ),
                              Container(
                                height: getSize(20),
                                color: Colors.transparent,
                              )
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
