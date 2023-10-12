import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class CounterModel = _CounterModelBase with _$CounterModel;

abstract class _CounterModelBase with Store {
  @computed
  bool get isEven => count.isEven;

  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
