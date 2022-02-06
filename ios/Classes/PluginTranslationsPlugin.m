#import "PluginTranslationsPlugin.h"
#if __has_include(<plugin_translations/plugin_translations-Swift.h>)
#import <plugin_translations/plugin_translations-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_translations-Swift.h"
#endif

@implementation PluginTranslationsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginTranslationsPlugin registerWithRegistrar:registrar];
}
@end
