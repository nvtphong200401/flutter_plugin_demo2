import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_demo2/flutter_plugin_demo2.dart';
import 'package:flutter_plugin_demo2/flutter_plugin_demo2_platform_interface.dart';
import 'package:flutter_plugin_demo2/flutter_plugin_demo2_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPluginDemo2Platform
    with MockPlatformInterfaceMixin
    implements FlutterPluginDemo2Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPluginDemo2Platform initialPlatform = FlutterPluginDemo2Platform.instance;

  test('$MethodChannelFlutterPluginDemo2 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPluginDemo2>());
  });

  test('getPlatformVersion', () async {
    FlutterPluginDemo2 flutterPluginDemo2Plugin = FlutterPluginDemo2();
    MockFlutterPluginDemo2Platform fakePlatform = MockFlutterPluginDemo2Platform();
    FlutterPluginDemo2Platform.instance = fakePlatform;

    expect(await flutterPluginDemo2Plugin.getPlatformVersion(), '42');
  });
}
