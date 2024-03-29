enum CustomRegex {
  manaCost(r'{([^]*?)}');

  final String value;
  const CustomRegex(this.value);
}
