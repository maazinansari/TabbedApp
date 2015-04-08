//
//  MapViewController.h
//  TabbedApp
//
//  Created by Maazin Ansari on 3/30/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"
#import "EventDetailViewController.h"


@interface MapViewController : UIViewController

@property (strong, nonatomic) NSMutableArray * currentArray;
@property (weak, nonatomic) Event * currentEvent;

-(void) refresh;


@end
