import 'package:string_ops/get-segments.dart';
import 'package:test/test.dart';

void main() {
  group('get segments', () {
    test('segments from lower case', () {
      String testString = 'hello world';
      final segments = getSegments(testString);
      expect(segments, ['hello', 'world']);
    });

    test('segments from upper case', () {
      String testString = 'HELLO WORLD';
      final segments = getSegments(testString);
      expect(segments, ['HELLO', 'WORLD']);
    });

    test('segments from scentence case', () {
      String testString = 'Hello world';
      final segments = getSegments(testString);
      expect(segments, ['Hello', 'world']);
    });

    test('segments from title case', () {
      String testString = 'Hello World';
      final segments = getSegments(testString);
      expect(segments, ['Hello', 'World']);
    });

    test('segments from camel case', () {
      String testString = 'helloWorld';
      final segments = getSegments(testString);
      expect(segments, ['hello', 'World']);
    });

    test('segments from pascal case', () {
      String testString = 'HelloWorld';
      final segments = getSegments(testString);
      expect(segments, ['Hello', 'World']);
    });

    test('segments from snake case', () {
      String testString = 'hello_world';
      final segments = getSegments(testString);
      expect(segments, ['hello', 'world']);
    });

    test('segments from upper snake case', () {
      String testString = 'HELLO_WORLD';
      final segments = getSegments(testString);
      expect(segments, ['HELLO', 'WORLD']);
    });

    test('segments from title snake case', () {
      String testString = 'Hello_World';
      final segments = getSegments(testString);
      expect(segments, ['Hello', 'World']);
    });

    test('segments from kebab case', () {
      String testString = 'hello-world';
      final segments = getSegments(testString);
      expect(segments, ['hello', 'world']);
    });

    test('segments from upper kebab case', () {
      String testString = 'HELLO-WORLD';
      final segments = getSegments(testString);
      expect(segments, ['HELLO', 'WORLD']);
    });

    test('segments from title kebab case', () {
      String testString = 'Hello-World';
      final segments = getSegments(testString);
      expect(segments, ['Hello', 'World']);
    });
  });
}
