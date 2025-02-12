// ignore_for_file: equal_elements_in_set

import 'dart:math';

void main() {
  var set1 = <int>{1, 2, 2, 3, 3, 4};

  var set2 = <int>{2, 2, 4, 4, 6, 8};

  // set collection-for
  var set3 = <int>{for (var ele in set2) ele * 2};

  print('set1 elements: $set1');

  print('set2 elements: $set2');

  print('set3 elements: $set3');

  // Returns new Set with elements that are in both sets
  print('itersection (elements that exist in both sets) of set1 and set2: ${set1.intersection(set2)}');

  // Returns new Set with elements that are not in other set i.e. set1 - set2
  print('difference of set1 and set2: set1 - set2 = ${set1.difference(set2)}');

  //Returns new Set containing all unique elements in both sets
  print('union (unique combination of elements) of set1 and set2: ${set1.union(set2)}');

  set1 = randomIntSet(8);

  set2 = randomIntSet(8);

  var x = 42;

  print('Random set1 values: ${set1}');

  print('Random set2 values: $set2');

  print('Assign value $x at subscript 0 within set2: ${set2[0] = x}');

  print('Random set2 values: $set2');
}

num sum(Iterable<num> iter) => iter.toList().reduce(
      (value, element) => value + element,
    );

Set<int> randomIntSet(int setLength) {
  var set1 = <int>{};
  final randInt = Random().nextInt;
  while (set1.length < setLength) {
    set1.add(randInt.call(10000));
  }
  // return defensive copy
  return {...set1};
}

// Sets: Set Theory

//   - unordered collection of unique elements

//   - Set operations:

//       - union

//       - intersect

//       - difference (except)

// Sets in Dart

//   - a programmatic representation and implementation of a mathematical set

//   - generic in nature i.e. parameterized type literal <T>{T0, T1, T2, ..., Tn}

//   - if the type annotation is omitted during instantiation then the set is heterogeneous (dynamic type) by default

//   - set indecies map to the set of whole numbers W e.g. {0, 1, 2, ..., n}

//   - like all collections in dart, sets can be divided into two categories:

//      ~ Mutable Sets | imperatively modifiable (any set not prefixed with const)

//      ~ Immutable Sets | unmodifiable Sets | Frozen Sets (any set prefixed with const) | (note: unmodifiable Sets can not have duplicates at compile time)

// Mathematical Set Categories

//   - empty set {} (a set containing zero elements)

//   - singleton set {1} (a set containing one element)

//   - set {1,-11,12,...,n} (a set containing two or more possibly infinite elements)

// Set Subscript in Dart

//   - By default the subscript operator is not implemented on Sets in dart

//   - with the extension keyword the aforementioned problem is easily resolved as shown bellow

extension SubScript<E> on Set<E> {
  // get element at subscript
  Set<E> operator [](int index) => {this.elementAt(index)};

  // update at subscript
  void operator []=(int index, E other) {
    List<E> arr0 = this.toList();
    arr0.insert(index, other);
    arr0.removeAt(index + 1);
    this.clear();
    this.addAll(arr0);
  }
}
