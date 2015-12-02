//
//  PinLocation.h
//  MapsPractice
//
//  Created by Nonpawit Teerachetmongkol on 12/2/2558 BE.
//  Copyright © 2558 Nonpawit Teerachetmongkol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface PinLocation : NSObject <MKAnnotation>

@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSString *message;
@property CLLocationDegrees latitude;
@property CLLocationDegrees longitude;
- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
