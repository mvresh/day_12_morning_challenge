import "package:test/test.dart";
import 'main.dart';
import 'dart:async';

var log = [];
void main() {

  test('test 1', overridePrint(() {
    countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]);
    expect(log, [
      'There are a total of 10 positive numbers',
      'The sum of all negative numbers equals -65'
    ]);
  }));
  test('test 2', overridePrint(() {
    digitDistance(234, 489);
    expect(log, [
      'There are a total of 10 positive numbers',
      'The sum of all negative numbers equals -65','12'
    ]);
  }));



}

overridePrint(testFn()) => () {
  var spec = new ZoneSpecification(
      print: (_, __, ___, String msg) {
        // Add to log instead of printing to stdout
        log.add(msg);
      }
  );
  return Zone.current.fork(specification: spec).run(testFn);
};