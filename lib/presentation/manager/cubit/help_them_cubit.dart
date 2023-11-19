import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save/models/help_model.dart';
import 'package:save/models/user_model.dart';
import 'package:save/presentation/manager/states/help_them_states.dart';

class HelpCubit extends Cubit<HelpStates> {
  HelpCubit() : super(HelpInitState());
  static HelpCubit get(context) => BlocProvider.of(context);

  UserModel? userModel;

  void helpFun({
    required String address,
    required String gender,
    required String phone,
    required String? postImage,
  }) async {
    emit(HelpLoadingState());
    HelpModel model = HelpModel(
      phone: userModel!.email,
      uId: userModel!.uId,
      address: address,
      image: postImage,
      gender: gender,
    );
    await FirebaseFirestore.instance
        .collection('Helps')
        .add(model.toMap())
        .then((value) {
      emit(HelpSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(HelpErrState());
    });
  }
}