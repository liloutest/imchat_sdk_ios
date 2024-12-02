#import "ImchatSdkIosPlugin.h"
#import "Messages.h"
@implementation ImchatSdkIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  ImchatSdkIosPlugin* instance = [[ImchatSdkIosPlugin alloc] init];
  IMPluginApiSetup(registrar.messenger, instance);
}

//- (nullable NSNumber *)initSDKParam:(IMInitSDKParam *)param error:(FlutterError * _Nullable __autoreleasing *)error
//{
//    NSLog(@"test");
//    return @1;
//}

- (BOOL)initSDKParam:(IMInitSDKParam *)param error:(FlutterError * _Nullable __autoreleasing *)error {
    NSLog(@"fsdf");
    return 1;
}

- (nullable NSString *)getPlatformVersionWithError:(FlutterError * _Nullable __autoreleasing * _Nonnull)error { 
    return @"ffffffff";
}

@end
