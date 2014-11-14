//
//  SunSetUtility.m
//  FoodHoliday
//
//  Created by McCormick, Greg on 10/22/14.
//  Copyright (c) 2014 Greg McCormick. All rights reserved.
//

//see the SunSetUtility.h for more documentation

#import "SunSetUtility.h"
#import "SunSetUtilityConfiguration.h"


@implementation SunSetUtility 

+ (void) RunSunSet {
    if([self isSunSetActive]){
        [SunSetUtility createAndLoadSunSetModal];
    }
}

+ (BOOL) isSunSetActive{
   // check config
     NSString *sunSetActive = [[SunSetUtilityConfiguration sharedConfiguration] sunsetActive];
    if([sunSetActive  isEqual: @"true"]){
        return YES;
    }
    return NO;
}

+ (BOOL) isCancelAllowed{
     NSString *sunSetCancelActive = [[SunSetUtilityConfiguration sharedConfiguration] sunsetCancelButtonActive];
    if([sunSetCancelActive  isEqual: @"true"]){
        return YES;
    }
    return NO;
}


+ (void) createAndLoadSunSetModal{
    NSLog(@"modal created");
    
    NSString *cancelButtonTitle = nil;
    
    if([SunSetUtility isCancelAllowed]){
        cancelButtonTitle = @"No Thanks";
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                      message:[[SunSetUtilityConfiguration sharedConfiguration] sunSetMessage]
                                                     delegate: self
                                            cancelButtonTitle: @"Download"
                                            otherButtonTitles:cancelButtonTitle,nil];
    [alert show];
 
}



+ (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"tag %li buttonIndex", (long)buttonIndex);
        switch (buttonIndex) {
            case 0:
            {
                // Download from AppStore
                [SunSetUtility downloadApp];
                break;
            }
            case 1:
            {
                break;
            }

        }
}

+ (void)downloadApp {
    NSLog(@"running downlaod");
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[[SunSetUtilityConfiguration sharedConfiguration] sunsetDownloadUrl]]];
    
}

@end


