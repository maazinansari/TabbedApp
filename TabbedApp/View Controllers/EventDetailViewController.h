//
//  EventDetailViewController.h
//  TabbedApp
//
//  Created by Maazin Ansari on 3/29/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Event;

@interface EventDetailViewController : UIViewController
@property (weak, nonatomic) Event * event;

-(void) refresh;

@end
