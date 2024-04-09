// 实例方法
import 'dart:math';

class Point {
  final double x;
  final double y;
  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y);
  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Vector {
  final int x, y;
  Vector(this.x, this.y);
  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;
  @override
  int get hashCode => Object.hash(x, y);
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);
  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
