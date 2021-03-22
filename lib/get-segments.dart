List<String> getSegments(String input) {
  final segmentPattern =
      RegExp(r'[a-z0-9][a-z\d]+|[A-Z][a-z0-9]+|[A-Z][A-Z\d]+|[a-zA-Z\d]+');

  final matches = segmentPattern.allMatches(input).toList();
  return matches.map((match) => match.group(0)!).toList();
}
