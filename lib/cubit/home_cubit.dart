

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workin_with_cubit/states/home_state.dart';

import '../core/constants/api_base.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitialState());

  List<dynamic> globalData = [];

  Future addData({required BuildContext context, required String name, required int id}) async {
    try {
      Response response = await Dio().post(ApiBase.instance.products, data: {
        "data": {"name": name, "product_id": id}
      });

      if (response.statusCode == 200) {
        emit(HomeCompletedState(data: globalData));
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("data has been added"),
          backgroundColor: Colors.green,
        ));
      }
    } catch (e) {
      debugPrint('ERROR $e');
    }
  }

  Future getData() async {
    try {
      Response res = await Dio().get(ApiBase.instance.apiUrl);
      if (res.statusCode == HttpStatus.ok) {
        debugPrint(res.data.toString());
        globalData = res.data;
        emit(HomeCompletedState(data: globalData));
      } else {
        emit(const HomeErrorState());
      }
    } catch (e) {
      emit(const HomeErrorState());
    }
  }
}
