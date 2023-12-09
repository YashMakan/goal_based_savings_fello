import 'package:flutter/material.dart';

import 'strings_en.dart';

abstract class Strings {}

extension StringExtensions on BuildContext {
  Strings get strings => StringsEn();
}
