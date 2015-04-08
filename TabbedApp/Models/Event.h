//
//  Event.h
//  TabbedApp
//
//  Created by Maazin Ansari on 3/29/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (strong, nonatomic) NSString * title;
@property (strong, nonatomic) NSString * location;
@property (strong, nonatomic) NSDate * date;
@property (nonatomic) double lat;
@property (nonatomic) double lon;



@end
