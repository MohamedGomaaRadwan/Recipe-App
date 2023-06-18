
import 'package:flutter/cupertino.dart';

extension BuildContextExtension on BuildContext {
  double get sw => MediaQuery.of(this).size.width;
  double get sh => MediaQuery.of(this).size.height;
}
