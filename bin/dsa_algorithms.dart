import 'package:dsa_algorithms/find_second_max.dart';

void main(List<String> arguments) {
  num? a = findSecondMax(array: [1, 2, 30.0, 40.4, 5]);

  if (a != null) {
    print('Second max is $a');
  } else {
    print('Array is empty');
  }
}
