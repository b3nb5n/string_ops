List<String> getSegments(String input) {
  final segmentPattern = RegExp(r'[a-z][^A-Z\s_-]+|[A-Z][a-z0-9]+|[^\s_-]+');

  final matches = segmentPattern.allMatches(input).toList();
  return matches.map((match) => match.group(0)).toList();
}
