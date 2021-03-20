import 'package:string_ops/segment-converters.dart';
import 'package:test/test.dart';

void main() {
  group('segment converters', () {
    test('lower case segments', () {
      List<String> segments = ['aaa', 'BBB', 'Ccc', 'dDd'];
      segments = lowerCaseSegments(segments);
      expect(segments, ['aaa', 'bbb', 'ccc', 'ddd']);
    });

    test('upper case segments', () {
      List<String> segments = ['aaa', 'BBB', 'Ccc', 'dDd'];
      segments = upperCaseSegments(segments);
      expect(segments, ['AAA', 'BBB', 'CCC', 'DDD']);
    });

    test('scentence case segments', () {
      List<String> segments = ['aaa', 'BBB', 'Ccc', 'dDd'];
      segments = scentenceCaseSegments(segments);
      expect(segments, ['Aaa', 'bbb', 'ccc', 'ddd']);
    });

    test('title case segments', () {
      List<String> segments = ['aaa', 'BBB', 'Ccc', 'dDd'];
      segments = titleCaseSegments(segments);
      expect(segments, ['Aaa', 'Bbb', 'Ccc', 'Ddd']);
    });

    test('camel case segments', () {
      List<String> segments = ['aaa', 'BBB', 'Ccc', 'dDd'];
      segments = camelCaseSegments(segments);
      expect(segments, ['aaa', 'Bbb', 'Ccc', 'Ddd']);
    });
  });
}
