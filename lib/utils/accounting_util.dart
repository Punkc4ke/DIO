import 'package:dioProject/utils/api_util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/accounting.dart';

class AccountingUtils {
  Future<List<Accounting>> getAccountings({String filter = "", String search = ""}) async {
    try {
      final accountings = await ApiUtils.S!.dio.get("/accountings", queryParameters: {"filter": filter, "search": search});
      if (accountings.data["data"] == "") {
        return List.empty();
      }
      return (accountings.data["data"] as List)
          .map((accounting) => Accounting.fromJson(accounting))
          .toList();
    } on DioError catch (error) {
      return List.empty();
    }
  }

  Future<bool> deleteAccounting(Accounting accounting) async {
    try {
      await ApiUtils.S!.dio.delete("/accountings/" + accounting.number.toString());
      return true;
    } on DioError catch (error) {
      return false;
    }
  }

  Future<bool> updateAccounting(Accounting accounting) async {
    try {
      await ApiUtils.S!.dio.put("/accountings/" + accounting.number.toString(), data: accounting);
      return true;
    } on DioError catch (error) {
      return false;
    }
  }

    Future<bool> createAccounting(Accounting accounting) async {
    try {
      await ApiUtils.S!.dio.post("/accountings", data: accounting);
      return true;
    } on DioError catch (error) {
      return false;
    }
  }
}