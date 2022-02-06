import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/lib_localizations.dart';

class PluginTranslations {
  static const MethodChannel _channel = MethodChannel('plugin_translations');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(LibLocalizations.of(context)!.test);
  }
}

LocalizationsDelegate getLibDelegate() => LibLocalizations.delegate;
