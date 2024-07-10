import 'package:bloc_pattern/data/repo/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfaCubit extends Cubit<int> {

  AnaSayfaCubit():super(0); //Varsayılan Değer

  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi1, String alinanSayi2){
    emit(mrepo.toplamaYap(alinanSayi1, alinanSayi2)); //tetikleme ve veri gönderme
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2){

    emit(mrepo.carpmaYap(alinanSayi1, alinanSayi2)); //tetikleme ve veri gönderme

  }
}