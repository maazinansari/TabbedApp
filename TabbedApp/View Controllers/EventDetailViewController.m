//
//  EventDetailViewController.m
//  TabbedApp
//
//  Created by Maazin Ansari on 3/29/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import "EventDetailViewController.h"
#import "Event.h"

@interface EventDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel * eventTitle;
@property (weak, nonatomic) IBOutlet UILabel * location;
@property (weak, nonatomic) IBOutlet UILabel * date;
@property (strong, nonatomic) NSDateFormatter * dateFormatter;

@end

@implementation EventDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     TODO:
    format the date (NSDate)
     */
    self.dateFormatter = [[NSDateFormatter alloc] init];
    self.dateFormatter.dateStyle = NSDateFormatterShortStyle;
    self.dateFormatter.timeStyle = NSDateFormatterShortStyle;
    
    [self refresh];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)refresh {
    self.eventTitle.text = self.event.title;
    self.location.text = self.event.location;
    self.date.text = [self.dateFormatter stringFromDate:self.event.date];
}

@end
