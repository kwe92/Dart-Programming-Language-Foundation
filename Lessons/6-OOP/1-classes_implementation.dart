// Class Implementation

// mutable Class

//   - also known as a stateful class
//   - state of data can change throughout

import 'dart:math';

class Point {
  double x;
  double y;
  Point({
    required this.x,
    required this.y,
  });

  @override
  String toString() => 'Point($x, $y)';

  void euclideanDistance(Point other) => sqrt(
        pow((other.x = this.x), 2) + pow((other.y - this.y), 2),
      );
}

int main() {
  Point p1 = Point(x: 4, y: 3);
  print('inital point: $p1');

  // square the Point
  p1
    ..x = pow(p1.x, 2).toDouble()
    ..y = pow(p1.y, 2).toDouble();

  print('squared point: $p1');

  return 1;
}