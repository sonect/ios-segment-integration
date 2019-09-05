/* Copyright Airship and Contributors */

#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegrationFactory.h>

@class UAConfig;
@interface SEGUrbanAirshipIntegrationFactory: NSObject <SEGIntegrationFactory>
@property (nonatomic, strong, readonly) UAConfig *config;

+ (instancetype)instance;
+ (instancetype)createWithConfig:(UAConfig *)config;

@end
