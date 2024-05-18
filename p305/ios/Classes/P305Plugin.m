#import "P305Plugin.h"
#if __has_include(<p305/p305-Swift.h>)
#import <p305/p305-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "p305-Swift.h"
#endif

@implementation P305Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftP305Plugin registerWithRegistrar:registrar];
}
@end
