//
//  SecondDetailViewController.h
//  TabbarWithMultipleDetailViews
//
//  Created by David Cook on 12/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h";

@interface SecondDetailViewController : UIViewController <SubstitutableDetailViewController> {
	UINavigationBar *navigationBar;
}

@property (nonatomic, retain) IBOutlet UINavigationBar *navigationBar;

@end
