//
//  HybridCar.h
//  CarValet
//
//  Created by Chad on 9/7/14.
//  Copyright (c) 2014 Chad Williams. All rights reserved.
//

#import "Car.h"

@interface HybridCar : Car

@property (nonatomic) float milesPerGallon;

-(float)milesUntilEmpty;

-(id)initWithMake:(NSString *)make model:(NSString *)model year:(int)year fuelAmount:(float)fuelAmount MPG:(float)MPG;

@end
