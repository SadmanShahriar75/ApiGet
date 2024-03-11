import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/apitest_controller.dart';

class ApitestView extends GetView<ApitestController> {
  ApitestView({Key? key}) : super(key: key);

  final _apitestController = Get.put(ApitestController());
  
  @override
  Widget build(BuildContext context) {
    final _apiTextController = Get.put(ApitestController());

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ApiTest',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Obx(() => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          _apiTextController.mapandlist["thumbnail"].toString(),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    Text(
                      _apiTextController.mapandlist["title"].toString(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      _apiTextController.mapandlist["description"].toString(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text(_apiTextController.mapandlist["price"].toString(),
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber)),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:
                          _apiTextController.mapandlist["images"]?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CachedNetworkImage(
                            imageUrl: _apiTextController.mapandlist["images"]
                                        ?[index]
                                    ?.toString() ??
                                "",
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
