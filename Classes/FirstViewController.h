//
//  FirstViewController.h
//  TabbarWithMultipleDetailViews
//
//  Created by David Cook on 12/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h";

@interface FirstViewController : UIViewController <SubstitutableDetailViewController>{
	UIToolbar *toolbar;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@end
