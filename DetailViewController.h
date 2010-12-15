//
//  DetailViewController.h
//  splitview
//
//  Created by David Cook on 12/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h";

//@interface DetailViewController : UIViewController <SubstitutableDetailViewController, UISplitViewControllerDelegate> {
//	
//    UIToolbar *toolbar;
//}
//
//@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;
//
//@end
//





@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate, SubstitutableDetailViewController> {
    
    UIPopoverController *popoverController;
    UIToolbar *toolbar;
    
    id detailItem;
    UILabel *detailDescriptionLabel;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@property (nonatomic, retain) id detailItem;
@property (nonatomic, retain) IBOutlet UILabel *detailDescriptionLabel;

@end
