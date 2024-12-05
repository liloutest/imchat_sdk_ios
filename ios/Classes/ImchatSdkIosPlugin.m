#import "ImchatSdkIosPlugin.h"
#import "Messages.h"

#import <imchat/IMSDK.h>
@implementation ImchatSdkIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  ImchatSdkIosPlugin* instance = [[ImchatSdkIosPlugin alloc] init];
  IMPluginApiSetup(registrar.messenger, instance);
}

- (BOOL)initSDKParam:(IMInitSDKParam *)param error:(FlutterError * _Nullable __autoreleasing *)error {
    NSLog(@"call initSDKParam");
   BOOL success = [IMSDK initSDKWithIdentityID:param.identityID sign:param.sign nickName:param.nickName nickId:param.nickId device:nil headIcon:param.headIcon phone:param.phone email:param.email language:param.langType source:param.source extraInfo:param.extraInfo];
    return success;
}

- (nullable NSString *)getPlatformVersionWithError:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    return @"0.0.1";
}

@end
