import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../../Utils.dart';



part 'hidoc_event.dart';
part 'hidoc_state.dart';

class HidocBloc extends Bloc<HidocEvent, HidocState> {
  HidocBloc() : super(HidocInitial()) {
    on<HidocEvent>((event, emit) async {emit(UserLoadingState());
      try {
        var dio = Dio();
        Response response = await dio.get(
            'https://utsavfashion.mobiloitte.io/rest/default/V1/products-render-info?searchCriteria[filterGroups][0][filters][0][field]=category_id&searchCriteria[filterGroups][0][filters][0][value]=4&searchCriteria[filterGroups][0][filters][0][conditionType]=eq&searchCriteria[pageSize]=20&searchCriteria[currentPage]=5&storeId=0&currencyCode=91');
        print("print here>>>>>${response.runtimeType}");
        if (response.statusCode == 200) {
          Utils.items = response.data['items'];
           if (kDebugMode) {
             print('response.data--- ${ Utils.items}');
           }
        }
        emit(UserLoadedState());
      }catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
