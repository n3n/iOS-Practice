//
//  ViewController.m
//  MapsPractice
//
//  Created by Nonpawit Teerachetmongkol on 12/2/2558 BE.
//  Copyright © 2558 Nonpawit Teerachetmongkol. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"
#import "PinLocation.h"

@interface ViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

#define METERS_PER_MILE 1609.344

@implementation ViewController {
    NSArray<id<MKAnnotation>> *annotations;
}

- (void)setupData {
    NSArray *locations = @[@{@"name": @"Google's First Office", @"year": @1999, @"latitude": @37.44451, @"longitude": @-122.163369},
                    @{@"name": @"Facebook's First Office", @"year": @2005, @"latitude": @37.444268, @"longitude": @-122.163271}
                    ];
    
    NSMutableArray *tmpAnnotations = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dict in locations) {
        PinLocation *annotation = [[PinLocation alloc] initWithDictionary:dict];
        [tmpAnnotations addObject:annotation];
    }
    
    annotations = [[NSArray alloc] initWithArray:tmpAnnotations];
    
    [self.mapView addAnnotations:annotations];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 37.44451;
    zoomLocation.longitude= -122.163369;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
    
}




@end
