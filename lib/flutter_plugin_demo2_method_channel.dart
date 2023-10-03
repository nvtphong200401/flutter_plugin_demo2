import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_plugin_demo2_platform_interface.dart';

/// An implementation of [FlutterPluginDemo2Platform] that uses method channels.
class MethodChannelFlutterPluginDemo2 extends FlutterPluginDemo2Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_plugin_demo2');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
