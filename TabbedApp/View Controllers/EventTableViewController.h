//
//  EventTableViewController.h
//  TabbedApp
//
//  Created by Maazin Ansari on 3/29/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"
#import "EventDetailViewController.h"
#import "MapViewController.h"

@interface EventTableViewController : UITableViewController

@property (nonatomic) NSMutableArray * currentArray;
@property (nonatomic) Event * currentEvent;

-(void) refresh;

@end
