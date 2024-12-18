// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class IMInitSDKParam;

@interface IMInitSDKParam : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithIdentityID:(NSString *)identityID
    sign:(NSString *)sign
    nickName:(NSString *)nickName
    nickId:(NSString *)nickId
    device:(NSString *)device
    headIcon:(NSString *)headIcon
    phone:(NSString *)phone
    email:(NSString *)email
    langType:(NSNumber *)langType
    source:(NSString *)source
    extraInfo:(nullable NSDictionary<NSString *, NSString *> *)extraInfo;
@property(nonatomic, copy) NSString * identityID;
@property(nonatomic, copy) NSString * sign;
@property(nonatomic, copy) NSString * nickName;
@property(nonatomic, copy) NSString * nickId;
@property(nonatomic, copy) NSString * device;
@property(nonatomic, copy) NSString * headIcon;
@property(nonatomic, copy) NSString * phone;
@property(nonatomic, copy) NSString * email;
@property(nonatomic, strong) NSNumber * langType;
@property(nonatomic, copy) NSString * source;
@property(nonatomic, strong, nullable) NSDictionary<NSString *, NSString *> * extraInfo;
@end

/// The codec used by IMPluginApi.
NSObject<FlutterMessageCodec> *IMPluginApiGetCodec(void);

@protocol IMPluginApi
/// @return `nil` only when `error != nil`.
- (nullable NSString *)getPlatformVersionWithError:(FlutterError *_Nullable *_Nonnull)error;
/// @return `nil` only when `error != nil`.
- (BOOL)initSDKParam:(IMInitSDKParam *)param error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void IMPluginApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<IMPluginApi> *_Nullable api);

NS_ASSUME_NONNULL_END
