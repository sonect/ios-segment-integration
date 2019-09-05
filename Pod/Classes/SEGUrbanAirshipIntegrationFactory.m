/* Copyright Airship and Contributors */

#import "SEGUrbanAirshipIntegrationFactory.h"
#import "SEGUrbanAirshipIntegration.h"
#import "AirshipLib.h"

@interface SEGUrbanAirshipIntegrationFactory ()
@property (nonatomic, strong) UAConfig *config;
@end

@implementation SEGUrbanAirshipIntegrationFactory

+ (instancetype)instance {
    static dispatch_once_t once;
    static SEGUrbanAirshipIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    return self;
}

- (UAConfig *)config {
    if (!_config) {
        _config = [UAConfig defaultConfig];
    }
    return _config;
}

+ (instancetype)createWithConfig:(UAConfig *)config {
    SEGUrbanAirshipIntegrationFactory *factory = [self instance];
    factory.config = config;
    return factory;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics {
    return [[SEGUrbanAirshipIntegration alloc] initWithConfig:self.config settings:settings];
}

- (NSString *)key {
    return @"Urban Airship";
}

@end
