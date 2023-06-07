import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);
  // 0 maksudnya adalah, haalaman yg pertama kali dibuka adalah halaman home, selanjutnya akan berindeks 1.

  void setPage(int newPage) {
    emit(newPage);
  }
}
