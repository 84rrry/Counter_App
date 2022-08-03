// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

class CounterState extends Equatable {
  int value;
  CounterState({
    required this.value,
  });
 

  @override
  List<Object> get props => [value];
}


