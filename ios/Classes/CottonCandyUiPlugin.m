#import "CottonCandyUiPlugin.h"
#if __has_include(<cotton_candy_ui/cotton_candy_ui-Swift.h>)
#import <cotton_candy_ui/cotton_candy_ui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "cotton_candy_ui-Swift.h"
#endif

@implementation CottonCandyUiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCottonCandyUiPlugin registerWithRegistrar:registrar];
}
@end
