//
//  TabbarWithMultipleDetailViewsAppDelegate.m
//  TabbarWithMultipleDetailViews
//
//  Created by David Cook on 12/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TabbarWithMultipleDetailViewsAppDelegate.h"
#import "RootViewController.h"
#import "DetailViewController.h"



@implementation TabbarWithMultipleDetailViewsAppDelegate

@synthesize window;
@synthesize tabBarController;
@synthesize splitViewController;
@synthesize rootViewController;
@synthesize detailViewController;


#pragma mark -
#pragma mark Application lifecycle
-(void) makeSplitViewController {
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:tabBarController.viewControllers];
    int index = 0; 
    for (UIViewController *controller in tabBarController.viewControllers) {
        if (index == 2) {
            detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailView" bundle:nil];
            rootViewController = [[RootViewController alloc] initWithStyle:UITableViewStylePlain];
            //rootViewController.detailViewController = detailViewController;
            rootViewController.navigationItem.title = @"List";
            UINavigationController *nav = [[[UINavigationController alloc] initWithRootViewController:rootViewController] autorelease];
            splitViewController = [[UISplitViewController alloc] init];
            splitViewController.tabBarItem = controller.tabBarItem;
            splitViewController.viewControllers = [NSArray arrayWithObjects:nav, detailViewController, nil];
            splitViewController.delegate = detailViewController;
            [controllers replaceObjectAtIndex:index withObject:splitViewController];
        }
        index++;
    }
    tabBarController.viewControllers = controllers;
	rootViewController.splitViewController = splitViewController;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch.
    [self makeSplitViewController];

	
    // Add the tab bar controller's current view as a subview of the window
    [self.window addSubview:tabBarController.view];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     */
}


#pragma mark -
#pragma mark UITabBarControllerDelegate methods

/*
 // Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
 */

/*
 // Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
 */

#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}

@end

