//
//  MapViewController.m
//  TabbedApp
//
//  Created by Maazin Ansari on 3/30/15.
//  Copyright (c) 2015 Maazin Ansari. All rights reserved.
//

#import "MapViewController.h"
#import "EventDetailViewController.h"
#import "Event.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation MapViewController {
    GMSMapView * mapView_;
}

- (void)viewDidLoad {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:40.1105
                                                            longitude:-88.2284
                                                                 zoom:14];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = NO;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker * testMarker = [[GMSMarker alloc] init];
    testMarker.position = CLLocationCoordinate2DMake(40.1095, -88.227);
    testMarker.title = @"Illini Union"; //from array, not database
    testMarker.snippet = @"1 event";
    testMarker.map = mapView_;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) refresh {
    Event * eventToUse = self.currentEvent;
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:eventToUse.lat
                                                            longitude:eventToUse.lon
                                                                 zoom:16];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = NO;
    self.view = mapView_;
    
    GMSMarker * testMarker = [[GMSMarker alloc] init];
    testMarker.position = CLLocationCoordinate2DMake(eventToUse.lat, eventToUse.lon);//40.1095, -88.227);
    testMarker.title = eventToUse.title; //from array, not database
    testMarker.snippet = @"1 event";
    testMarker.map = mapView_;
}

@end
