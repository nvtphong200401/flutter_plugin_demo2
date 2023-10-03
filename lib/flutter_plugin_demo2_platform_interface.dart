import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_plugin_demo2_method_channel.dart';

abstract class FlutterPluginDemo2Platform extends PlatformInterface {
  /// Constructs a FlutterPluginDemo2Platform.
  FlutterPluginDemo2Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPluginDemo2Platform _instance = MethodChannelFlutterPluginDemo2();

  /// The default instance of [FlutterPluginDemo2Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPluginDemo2].
  static FlutterPluginDemo2Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPluginDemo2Platform] when
  /// they register themselves.
  static set instance(FlutterPluginDemo2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
