import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApitestController extends GetxController {
  //TODO: Implement ApitestController

  final count = 0.obs;
  final _dio = Dio();
   
    final listofAllPeoductdetails = [].obs;



 
   // map and list
    final mapandlist = {}.obs;
    void fetchMapListData() async {
    try {
      final productdata = await _dio.get("https://dummyjson.com/products/1");
      mapandlist.value = productdata.data;
      print(mapandlist);
    } catch (e) {
      print(e);
    }
  }





  
  // void fetchMapData() async {
  //   try {
  //     final productdata = await _dio.get("https://dummyjson.com/products");
  //     listofAllPeoductdetails.value = productdata.data["products"];
  //     print(listofAllPeoductdetails);
  //   } catch (e) {
  //     print(e);
  //   }
  // }


   //trying to fetch list 
  //   final listPeoductdetails = [].obs;
  //  void fetchListData() async {
  //   try {
  //     final productdata = await _dio.get("https://jsonplaceholder.typicode.com/posts");

  //     listPeoductdetails.value = productdata.data;
  //     print(listPeoductdetails);
  //   } catch (e) {
  //     print(e);
  //   }
  // }








  @override
  void onInit() {
    fetchMapListData();
    //  fetchMapData() ;
    // fetchListData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
