//
//  AppDelegate.m
//  GPUImage_demo03
//
//  Created by tlab on 2020/8/26.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import "AppDelegate.h"
#import "TlabVideoViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[TlabVideoViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
