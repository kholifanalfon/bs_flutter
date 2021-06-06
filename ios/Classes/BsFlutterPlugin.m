#import "BsFlutterPlugin.h"
#if __has_include(<bs_flutter/bs_flutter-Swift.h>)
#import <bs_flutter/bs_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bs_flutter-Swift.h"
#endif

@implementation BsFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBsFlutterPlugin registerWithRegistrar:registrar];
}
@end
