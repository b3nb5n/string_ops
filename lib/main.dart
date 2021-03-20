library string_ops;

import 'package:string_ops/casing-formats.dart';
import 'package:string_ops/get-segments.dart';
import 'package:string_ops/segment-converters.dart';

extension StringOps on String {
  String convertCase(CasingFormat targetCase) {
    final segments = getSegments(this);

    switch (targetCase) {
      case CasingFormat.lowerCase:
        return lowerCaseSegments(segments).join(' ');
        break;
      case CasingFormat.upperCase:
        return upperCaseSegments(segments).join(' ');
        break;
      case CasingFormat.scentenceCase:
        return scentenceCaseSegments(segments).join(' ');
        break;
      case CasingFormat.titleCase:
        return titleCaseSegments(segments).join(' ');
        break;
      case CasingFormat.camelCase:
        return camelCaseSegments(segments).join();
        break;
      case CasingFormat.pascalCase:
        return titleCaseSegments(segments).join();
        break;
      case CasingFormat.snakeCase:
        return lowerCaseSegments(segments).join('_');
        break;
      case CasingFormat.upperSnakeCase:
        return upperCaseSegments(segments).join('_');
        break;
      case CasingFormat.titleSnakeCase:
        return titleCaseSegments(segments).join('_');
        break;
      case CasingFormat.kebabCase:
        return lowerCaseSegments(segments).join('-');
        break;
      case CasingFormat.upperKebabCase:
        return upperCaseSegments(segments).join('-');
        break;
      case CasingFormat.titleKebabCase:
        return titleCaseSegments(segments).join('-');
        break;
      default:
        return lowerCaseSegments(segments).join(' ');
    }
  }
}
