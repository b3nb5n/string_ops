List<String> getSegments(String input) {
  final segmentPattern = RegExp(
      '[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+');

  final matches = segmentPattern.allMatches(input).toList();
  return matches.map((match) => match.group(0));
}
