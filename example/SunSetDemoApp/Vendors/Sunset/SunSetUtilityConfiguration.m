//
//  SunSetUtilityConfiguration.m
//  SunSetDemoApp
//
//  Created by McCormick, Greg on 11/6/14.
//  Copyright (c) 2014 crushmedia. All rights reserved.
//

/* 
I have set this utility to allow developers to set the features from
here but, it would be ideal to hook it to a back end config so that
the features can be turned off and on easily work from this config

 
 sunsetActive = This BOOL allows you turn the message on or off
 sunsetCancelButtonActive = This BOOL sets the type of dialog that is displayed. Removing the cancel button forces the user to download something new or close the app.
 sunsetDownloadUrl = An NSString that points to the location of the new app on the itunes store.
 sunSetMessage = This is the message that will appear on the Dialog.
 
 
 */


#import "SunSetUtilityConfiguration.h"

static SunSetUtilityConfiguration *configuration = nil;
@implementation SunSetUtilityConfiguration

+ (SunSetUtilityConfiguration *)sharedConfiguration {
    if (!configuration){
        configuration = [[SunSetUtilityConfiguration alloc] init];
        [self loadConfigObject];
    }
    
    return configuration;
}



+(void)loadConfigObject{
    
    SunSetUtilityConfiguration *configuration = [SunSetUtilityConfiguration sharedConfiguration];
    
    // sunset config stuff here - ideally you would have this run from a config webservice so you can flip the switch when you want.
    
    configuration.sunsetActive = @"true";
    configuration.sunsetCancelButtonActive = @"true";
    configuration.sunsetDownloadUrl = @"https://itunes.apple.com/us/app/1repmax/id388671071?mt=8&uo=4&at=1l3vniY";
    configuration.sunSetMessage = @"Sorry we are closing down this app.  But we would like to suggest you try a different app we reccomend.  You can find it in the appstore.";

}


@end