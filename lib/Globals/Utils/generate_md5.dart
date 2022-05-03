import 'dart:convert';
import 'package:crypto/crypto.dart';

///Generate MD5 hash
String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}