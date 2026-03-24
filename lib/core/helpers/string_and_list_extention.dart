extension StringX on String? {
  // ignore: unnecessary_null_comparison
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListX<T> on List<T>? {
  // ignore: unnecessary_null_comparison
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
