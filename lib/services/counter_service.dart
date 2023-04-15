class CounterService {
  int counterValue = 0;

  addCounterValue() {
    counterValue = counterValue + 1;
    print(counterValue);
  }
}
