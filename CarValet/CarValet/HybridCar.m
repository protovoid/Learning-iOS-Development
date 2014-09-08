//
//  HybridCar.m
//  CarValet
//
//  Created by Chad on 9/7/14.
//  Copyright (c) 2014 Chad Williams. All rights reserved.
//

#import "HybridCar.h"

@implementation HybridCar

-(id)init
{
    self = [super init];
    
    if (self != nil) {
        _milesPerGallon = 0.0f;
    }
    
    return self;
}


-(id)initWithMake:(NSString *)make model:(NSString *)model year:(int)year fuelAmount:(float)fuelAmount MPG:(float)MPG {
    self = [super initWithMake:make model:model year:year fuelAmount:fuelAmount];
    
    if (self != nil) {
        _milesPerGallon = MPG;
    }
    return self;
}


-(void)printCarInfo {
    [super printCarInfo]; // calls superclass (Car) version of method.
    
    NSLog(@"Miles Per Gallon: %0.2f", self.milesPerGallon); // info specific to hybrid printed.
    
    if (self.milesPerGallon > 0.0f) {
        NSLog(@"Miles until empty: %0.2f", [self milesUntilEmpty]);
    }
}


-(float)milesUntilEmpty {
    return (self.fuelAmount * self.milesPerGallon);
}

@end
