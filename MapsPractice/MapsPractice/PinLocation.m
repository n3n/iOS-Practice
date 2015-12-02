//
//  PinLocation.m
//  MapsPractice
//
//  Created by Nonpawit Teerachetmongkol on 12/2/2558 BE.
//  Copyright © 2558 Nonpawit Teerachetmongkol. All rights reserved.
//

#import "PinLocation.h"

const static NSString *kName = @"name";
const static NSString *kMessage = @"message";
const static NSString *kLatitude = @"latitude";
const static NSString *kLongitude = @"longitude";

@implementation PinLocation

- (void)setupAnnotation {
}

- (CLLocationCoordinate2D) coordinate {
    return CLLocationCoordinate2DMake(self.latitude, self.longitude);
}

- (NSString *)title {
    return self.name;
}

- (NSString *)subtitle {
    return @"This is subtitle";
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if(self) {
        self.name = dictionary[kName];
        self.latitude = [dictionary[kLatitude] doubleValue];
        self.longitude = [dictionary[kLongitude] doubleValue];
        [self setupAnnotation];
    }
    return self;
}

@end
