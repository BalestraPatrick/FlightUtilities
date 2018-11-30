//
//  AppDelegate.m
//  FlightUtilities
//
//  Created by Patrick Balestra on 11/29/18.
//  Copyright © 2018 Patrick Balestra. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
#if TARGET_IPHONE_SIMULATOR
    NSString *path = @"/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/";
#else
    NSString *path = @"System/Library/PrivateFrameworks/FlightUtilities.framework";
#endif

    NSBundle *bundle = [NSBundle bundleWithPath:path];
    if (![bundle load]) {
        [NSException raise:NSInternalInconsistencyException format:@"The specified path to the FlightUtilities.framework is invalid. Most likely you have Xcode named in a different way :)"];
    }
    return YES;
}

@end
