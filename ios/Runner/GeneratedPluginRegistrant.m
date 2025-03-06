//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<file_picker/FilePickerPlugin.h>)
#import <file_picker/FilePickerPlugin.h>
#else
@import file_picker;
#endif

#if __has_include(<flutter_vibrate/VibratePlugin.h>)
#import <flutter_vibrate/VibratePlugin.h>
#else
@import flutter_vibrate;
#endif

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

#if __has_include(<sensors/FLTSensorsPlugin.h>)
#import <sensors/FLTSensorsPlugin.h>
#else
@import sensors;
#endif

#if __has_include(<sensors_plus/FLTSensorsPlusPlugin.h>)
#import <sensors_plus/FLTSensorsPlusPlugin.h>
#else
@import sensors_plus;
#endif

#if __has_include(<shared_preferences_foundation/SharedPreferencesPlugin.h>)
#import <shared_preferences_foundation/SharedPreferencesPlugin.h>
#else
@import shared_preferences_foundation;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FilePickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FilePickerPlugin"]];
  [VibratePlugin registerWithRegistrar:[registry registrarForPlugin:@"VibratePlugin"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
  [FLTSensorsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTSensorsPlugin"]];
  [FLTSensorsPlusPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTSensorsPlusPlugin"]];
  [SharedPreferencesPlugin registerWithRegistrar:[registry registrarForPlugin:@"SharedPreferencesPlugin"]];
}

@end
