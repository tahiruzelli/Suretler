import 'dart:developer';

import 'package:flutter/foundation.dart';

logPrint(String text){
  if(kDebugMode) {
    log(text, name: "Suretler", time: DateTime.now());
  }
}