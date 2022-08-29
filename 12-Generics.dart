// Generics
//    - Allows a class or function to work with more than one data type and maintain type safety
//    - Reduce code duplication
//    - Helps write type safe code
void main() {
  const myList = [1, 2, 3];

  final List<double> transformedList =
      myList.map((element) => element * 2.toDouble()).toList();

  print('Transformed list using .map method: $transformedList');

  final List<int> transformedList2 = doubleItems(myList);

  print('Transformed list2 using a doubleItems function: $transformedList2');

  var l1 = transform<int, int>([1, 3, 5, 7, 9], (x) => x * 2);
  var l2 = transform<double, double>([1, 3, 5, 7, 9], (x) => x / 2);
  var l3 = transform<double, int>(
      [1.3, 3.6, 5.456, 7.1243, 9.976], (x) => x.round());

  print('l1 run time type: ${l1.runtimeType} | value: ${l1}');
  print('l2 run time type: ${l2.runtimeType} | value: ${l2}');
  print('l3 run time type: ${l3.runtimeType} | value: ${l3}');
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}

// Doubles the items in a list and returns a list
// returns a new transformed list
List<int> doubleItems(List<int> list) {
  final result =
      <int>[]; // initialize a new empty array restricted to intergers only
  for (var element in list) result.add(element * 2);
  return result;
}