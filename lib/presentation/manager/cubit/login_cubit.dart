import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save/config/network/constant.dart';
import 'package:save/models/user_model.dart';
import 'package:save/presentation/manager/states/login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitStates());
  static LoginCubit get(context) => BlocProvider.of(context);
  UserModel? userModel;
  void userLogin({required String email, required String password}) {
    emit(LoginLoadingStates());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      emit(LoginSucessStates());
    }).catchError((err) {
      emit(LoginErrStates());
    });
  }

  void getUserData() {
    emit(LoginLoadingStates());

    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      print(value.data());
      userModel = UserModel.fromJason(value.data()!);
      emit(LoginSucessStates());
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrStates());
    });
  }
}
