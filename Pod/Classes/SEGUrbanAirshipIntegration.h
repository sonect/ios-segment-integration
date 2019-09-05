/* Copyright Airship and Contributors */

#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegration.h>

@class UAConfig;
@interface SEGUrbanAirshipIntegration : NSObject <SEGIntegration>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) UAConfig *config;

- (instancetype)initWithConfig:(UAConfig *)config settings:(NSDictionary *)settings;

@end
