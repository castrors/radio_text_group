class CounterData {
  static int selectedIndex = 0;

  static List<int> counterList = List<int>.filled(10, 0);

  static void increment() {
    counterList[selectedIndex]++;
  }

  static int getTotal() {
    int sum = 0;
    for (var item in counterList) {
      sum += item;
    }

    return sum;
  }

  static isSelected(int index) => index == selectedIndex;
}
