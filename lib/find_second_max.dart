/// Find the second maximum number in a list of integers.
/// Time complexity: O(n)
num? findSecondMax({required List<num> array}) {
  if (array.isEmpty) {
    return null;
  } else if (array.length == 1) {
    return array[0];
  } else if (array.length == 2) {
    return array[0] > array[1] ? array[1] : array[0];
  }

  num max = array[0] > array[1] ? array[0] : array[1];
  num secondMax = array[0] < array[1] ? array[1] : array[0];

  for (int i = 2; i < array.length; i++) {
    if (array[i] > max) {
      secondMax = max;
      max = array[i];
    } else if (array[i] > secondMax && array[i] != max) {
      secondMax = array[i];
    }
  }
  return secondMax;
}
