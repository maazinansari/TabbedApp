//
//  EventTableViewController.m
//  TabbedApp
//
//  Created by Maazin Ansari on 3/29/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import "EventTableViewController.h"
#import "Event.h"
#import "EventDetailViewController.h"

@interface EventTableViewController ()
@property (strong, nonatomic) NSMutableArray * events;

@end

@implementation EventTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.events = [NSMutableArray arrayWithCapacity:8];
    [self refresh];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.events count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EventCell" forIndexPath:indexPath];
    
    // Configure the cell...
    Event * e = self.events[indexPath.row];
    cell.textLabel.text = e.title;
    
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"eventDetailSegue"]) {
        EventDetailViewController * ed = segue.destinationViewController;
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        Event * eventToBeDisplayed = self.events[indexPath.row];
        ed.event = eventToBeDisplayed;
        [ed refresh];
    }
}

-(void)refresh {
    //query database
    Event * e1 = [[Event alloc] init];
    e1.title = @"Free Food!";
    e1.location = @"Illini Union Courtyard Cafe";
    e1.date = [NSDate date];
    
    Event * e2 = [[Event alloc] init];
    e2.title = @"Basketball - Illinois vs. Michigan";
    e2.location = @"State Farm Stadium";
    e2.date = [NSDate date];
    
    Event * e3 = [[Event alloc] init];
    e3.title = @"Symphony Orchestra";
    e3.location = @"Krannert Center for the Performing Arts";
    e3.date = [NSDate date];
    
    NSArray * temp = @[e1, e2, e3];
    
    self.events = [NSMutableArray arrayWithArray:temp];
}

@end
