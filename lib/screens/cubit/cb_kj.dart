import 'st_kj.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eticon_api/eticon_api.dart';

class CbKj extends Cubit<StKj> {
  CbKj() : super(StKjLoading());
  
  Future<void> getData() async {
    try {
      Map<String, dynamic> response =
          await Api.get(method: 'method', testMode: true);
      emit(StKjLoaded());
    } on APIException catch (e) {
      emit(StKjError(error: e.code));
    }
  }
}
    