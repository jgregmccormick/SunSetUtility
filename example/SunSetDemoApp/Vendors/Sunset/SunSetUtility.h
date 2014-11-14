//
//  SunSetUtility.h
//  FoodHoliday
//
//  Created by McCormick, Greg on 10/22/14.
//  Copyright (c) 2014 Greg McCormick. All rights reserved.
//

/*
 
sunsetActive = This BOOL allows you turn the message on or off
sunsetCancelButtonActive = This BOOL sets the type of dialog that is displayed. Removing the cancel button forces the user to download something new or close the app.
sunsetDownloadUrl = An NSString that points to the location of the new app on the itunes store.
sunSetMessage = This is the message that will appear on the Dialog.

 
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface SunSetUtility : NSObject <UIAlertViewDelegate>

+ (void) RunSunSet;
+ (BOOL) isSunSetActive;
+ (void) createAndLoadSunSetModal;
+ (BOOL) isCancelAllowed;
+ (void) downloadApp;


@end

