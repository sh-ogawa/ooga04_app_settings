#import "Ooga04AppSettingsPlugin.h"
#import <ooga04_app_settings/ooga04_app_settings-Swift.h>

@implementation Ooga04AppSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOoga04AppSettingsPlugin registerWithRegistrar:registrar];
}
@end
