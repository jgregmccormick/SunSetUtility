SunSetUtility
=============

A Simple utility that can be added to your iOS project that allows you to notify users that you are shutting down this app.  You can refer users to a different app if you like.  You can also stage the rollout with a cancel button that allows users to keep using the app.  Then you can set a switch to only allow download of the new app.


1. Add The SunSet Utility files to your project
2. `#import` the `SunSetUtility.h` file in your `ApplicationDelegate.m`
3. In the `AppDelegate.m` add the call `[SunSetUtility RunSunSet];` to the  `- (void)applicationDidBecomeActive:(UIApplication *)application` method.
4. Set your options in the `SunSetUtilityConfiguration.m`

###Options
- `sunsetActive` = This BOOL allows you turn the message on or off
- `sunsetCancelButtonActive` = This BOOL sets the type of dialog that is displayed. Removing the cancel button forces the user to download something new or close the app.
- `sunsetDownloadUrl` = An NSString that points to the location of the new app on the itunes store.
- `sunSetMessage` = This is the message that will appear on the Dialog.

The `SunSetUtilityConfiguration.m` allows you to make changes to these settings, but ideally developers would want to have this powered by a web service.  It would allow changing these settings on the fly. 

### Example 
![alt tag](https://cloud.githubusercontent.com/assets/427927/5046928/83e7e17c-6bd5-11e4-8ffe-36a74d98db0b.png)
