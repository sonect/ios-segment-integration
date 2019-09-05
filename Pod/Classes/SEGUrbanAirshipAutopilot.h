/* Copyright Airship and Contributors */

#import <Foundation/Foundation.h>

@class UAConfig;
@interface SEGUrbanAirshipAutopilot : NSObject

+(void)takeOff:(UAConfig *)config settings:(NSDictionary *)settings storeConfig:(BOOL)storeConfig;

@end
