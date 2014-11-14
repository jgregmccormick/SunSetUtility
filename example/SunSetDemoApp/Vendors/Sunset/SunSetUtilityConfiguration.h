//
//  SunSetUtilityConfiguration.h
//  SunSetDemoApp
//
//  Created by McCormick, Greg on 11/6/14.
//  Copyright (c) 2014 crushmedia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SunSetUtilityConfiguration : NSObject

// sunset items from the config
@property(nonatomic, strong) NSString *sunsetActive;
@property(nonatomic, strong) NSString *sunsetCancelButtonActive;
@property(nonatomic, strong) NSString *sunsetDownloadUrl;
@property(nonatomic, strong) NSString *sunSetMessage;

+ (SunSetUtilityConfiguration *)sharedConfiguration;

+(void)loadConfigObject;
    
@end
