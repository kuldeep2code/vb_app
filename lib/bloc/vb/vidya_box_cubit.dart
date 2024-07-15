import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../../data/services/models/vidyabox_slides.dart';
import '../../data/services/repository/MiscRepository.dart';

part 'vb_state.dart';

class VidyaBoxCubit extends Cubit<VbState> {
  VidyaBoxCubit() : super(VbState());
  MiscRepository _miscRepository = GetIt.I<MiscRepository>();

  fetchVidyaBoxSlides() async {
    log("Testing1");
    try {
      emit(state.copyWith(slidesLoading: SlidesLoading.loading));
      final slides = await _miscRepository.fetchVidyaBoxSlides();
      print(slides);
      if (slides is List<VidyaBoxSlide>) {
        emit(state.copyWith(slidesLoading: SlidesLoading.fetched, vidyaboxSlides: slides));
      }else{
        log("Something wents wrong");
      }
    } catch (e) {
      emit(state.copyWith(slidesLoading: SlidesLoading.error));
    }
  }

  Future orderShippingAddress(data) async {
    final resp = await _miscRepository.shippingAddress(data);
    return resp;
  }

  getUrl() async{
    final res = await _miscRepository.getFreeDemoUrl();
    log(res, name: "URL CHECK");
    return res;
  }
}
