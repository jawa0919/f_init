#import "P223Plugin.h"
#if __has_include(<p223/p223-Swift.h>)
#import <p223/p223-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "p223-Swift.h"
#endif

@implementation P223Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftP223Plugin registerWithRegistrar:registrar];
}
@end
