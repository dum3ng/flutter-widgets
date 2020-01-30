import 'dart:math';

double deg2rad(double deg) => deg * pi / 180.0;

const _names = [
  'mark',
  'jack',
  'nancy',
  'joseph',
  'kael',
  'jugger',
  'sherlock',
  'holemos'
];

String randomName() {
  return _names[Random().nextInt(_names.length)];
}
