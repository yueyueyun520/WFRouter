//
//  AppDelegate.m
//  WFRouter
//
//  Created by efun on 2019/4/19.
//  Copyright © 2019 wyy. All rights reserved.
//

#import "AppDelegate.h"
#import "WFRouterNavigationController.h"
#import "WFBaseViewController.h"
#import "WFRouterManager.h"
#import "WFRouterModel.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    WFBaseViewController *baseVC = [[WFBaseViewController alloc]init];
    WFRouterNavigationController *navi = [[WFRouterNavigationController alloc]initWithRootViewController:baseVC];
    [WFRouterManager shareInstance].routerNavigationController = navi;
    baseVC.routerNavigationController = navi;
    
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
   // [self jumpUrl];
    
    return YES;
}

- (void)jumpUrl{
    WFRouterModel *model = [[WFRouterModel alloc]init];
    model.url = @"WF://goto?type=go_webview&pid=100001&url=https://www.baidu.com";
    
    [[WFRouterManager shareInstance]initWithRouterModel:model];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
