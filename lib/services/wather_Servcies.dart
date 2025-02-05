import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import '../model/wather_Modal.dart';

class WatherServcies {
  final Dio dio;
  final String basUrl = "https://weather.visualcrossing.com";
  final String apk = "V54ZZYWX5KK847D8VFPHBNE7J#";

  WatherServcies(this.dio);


  Future<WatherModal> getCurrntWather({required String CityName}) async {
    try {
      Response response = await dio.get(
        "$basUrl/VisualCrossingWebServices/rest/services/timeline/$CityName?key=$apk",
      );

      log(response.data.toString());

      WatherModal watherModal = WatherModal.fromJson(response.data);
      return watherModal;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'Oops, there was an error. Try again later.';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops, there was an error. Try again later.');
    }
  }
}



