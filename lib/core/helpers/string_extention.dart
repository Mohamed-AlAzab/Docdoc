extension StringX on String? {
  // ignore: unnecessary_null_comparison
  bool isEmptyOrNull() => this == null || this == "";
}
