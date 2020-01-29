enum Size {
  large,
  small,
  medium,
}

void main() {
  List<String> vals = Size.values.map((x) => x.toString()).toList();
  print(vals);
  Map<String, Size> data;
  data = Map.fromEntries(Size.values.map((x) => MapEntry(x.toString(), x)));
  print(data);
}
