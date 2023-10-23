import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubesss_state.dart';

class CubesssCubit extends Cubit<CubesssState> {
  CubesssCubit() : super(CubesssInitial());
}
