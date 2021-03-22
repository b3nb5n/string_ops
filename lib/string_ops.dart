library string_ops;

import 'package:string_ops/casing-formats.dart';
import 'package:string_ops/get-segments.dart';
import 'package:string_ops/segment-converters.dart';

export 'casing-formats.dart';

extension StringOps on String {
  /// Warning: this operation will remove all non-alpha-numeric characters
  String convertCasing(CasingFormat targetCase) {
    final segments = getSegments(this);

    switch (targetCase) {
      case CasingFormat.lowerCase:
        return lowerCaseSegments(segments).join(' ');
      case CasingFormat.upperCase:
        return upperCaseSegments(segments).join(' ');
      case CasingFormat.scentenceCase:
        return scentenceCaseSegments(segments).join(' ');
      case CasingFormat.titleCase:
        return titleCaseSegments(segments).join(' ');
      case CasingFormat.camelCase:
        return camelCaseSegments(segments).join();
      case CasingFormat.pascalCase:
        return titleCaseSegments(segments).join();
      case CasingFormat.snakeCase:
        return lowerCaseSegments(segments).join('_');
      case CasingFormat.upperSnakeCase:
        return upperCaseSegments(segments).join('_');
      case CasingFormat.titleSnakeCase:
        return titleCaseSegments(segments).join('_');
      case CasingFormat.kebabCase:
        return lowerCaseSegments(segments).join('-');
      case CasingFormat.upperKebabCase:
        return upperCaseSegments(segments).join('-');
      case CasingFormat.titleKebabCase:
        return titleCaseSegments(segments).join('-');
      default:
        return lowerCaseSegments(segments).join(' ');
    }
  }
}
