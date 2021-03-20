List<String> lowerCaseSegments(List<String> segments) {
  return segments.map((segment) => segment.toLowerCase()).toList();
}

List<String> upperCaseSegments(List<String> segments) {
  return segments.map((segment) => segment.toUpperCase()).toList();
}

List<String> scentenceCaseSegments(List<String> segments) {
  segments = lowerCaseSegments(segments);
  segments[0] = '${segments[0][0].toUpperCase()}${segments[0].substring(1)}';
  return segments;
}

List<String> titleCaseSegments(List<String> segments) {
  segments = lowerCaseSegments(segments);
  for (var i = 0; i < segments.length; i++) {
    segments[i] = '${segments[i][0].toUpperCase()}${segments[i].substring(1)}';
  }
  return segments;
}

List<String> camelCaseSegments(List<String> segments) {
  segments = lowerCaseSegments(segments);
  for (var i = 1; i < segments.length; i++) {
    segments[i] = '${segments[i][0].toUpperCase()}${segments[i].substring(1)}';
  }
  return segments;
}
