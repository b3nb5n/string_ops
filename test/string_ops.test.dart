import 'package:string_ops/string_ops.dart';
import 'package:test/test.dart';

void main() {
  group('casing conversions', () {
    final Map<CasingFormat, String> formatExamples = {
      CasingFormat.lowerCase: 'th3 quick br0wn fox jumped over the lazy dog',
      CasingFormat.upperCase: 'TH3 QUICK BR0WN FOX JUMPED OVER THE LAZY DOG',
      CasingFormat.scentenceCase:
          'Th3 quick br0wn fox jumped over the lazy dog',
      CasingFormat.titleCase: 'Th3 Quick Br0wn Fox Jumped Over The Lazy Dog',
      CasingFormat.camelCase: 'th3QuickBr0wnFoxJumpedOverTheLazyDog',
      CasingFormat.pascalCase: 'Th3QuickBr0wnFoxJumpedOverTheLazyDog',
      CasingFormat.snakeCase: 'th3_quick_br0wn_fox_jumped_over_the_lazy_dog',
      CasingFormat.upperSnakeCase:
          'TH3_QUICK_BR0WN_FOX_JUMPED_OVER_THE_LAZY_DOG',
      CasingFormat.titleSnakeCase:
          'Th3_Quick_Br0wn_Fox_Jumped_Over_The_Lazy_Dog',
      CasingFormat.kebabCase: 'th3-quick-br0wn-fox-jumped-over-the-lazy-dog',
      CasingFormat.upperKebabCase:
          'TH3-QUICK-BR0WN-FOX-JUMPED-OVER-THE-LAZY-DOG',
      CasingFormat.titleKebabCase:
          'Th3-Quick-Br0wn-Fox-Jumped-Over-The-Lazy-Dog'
    };

    formatExamples.keys.forEach((inputFormat) {
      formatExamples.keys.forEach((outputFormat) {
        test('convert $inputFormat to $outputFormat', () {
          final inputString = formatExamples[inputFormat];
          final expectedOutput = formatExamples[outputFormat];

          final result = inputString!.convertCasing(outputFormat);
          expect(result, expectedOutput);
        });
      });
    });
  });
}
