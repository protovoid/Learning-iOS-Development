//
//  Car.m
//  CarValet
//
//  Created by Chad on 9/7/14.
//  Copyright (c) 2014 Chad Williams. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)init {
    return [self initWithMake:nil model:nil year:1900 fuelAmount:0.0f]; // this line same result as commented block below.
    
    /*
    self = [super init]; // initialize self
    if (self != nil) { // if self was initialized, set up object
        _year = 1900;
        _fuelAmount = 0.0f;
    }
    return self;
    */
}


-(id)initWithMake:(NSString *)make // allocates new object and assigns each value passed into Car object's properties.
             model:(NSString *)model
              year:(int)year
        fuelAmount:(float)fuelAmount {
    
    self = [super init]; // call the superclass initializer method
    if (self != nil) { // if superclass was able to initialize object, initializes rest of object or self=nil.
        _make = [make copy]; // set variables.
        _model = [model copy];
        _year = year;
        _fuelAmount = fuelAmount;
    }
    return self;
}


-(void)printCarInfo {
    
    /*
    // removed per page 52
    if (!_make) return; // only print if Car has a make defined.
    if (!_model) return; // only print if Car has a model defined.
     */
    
    if (self.make && self.model) { // checks if both make & model are not nil.
        NSLog(@"Car Make: %@", _make); // prints values to console.
        NSLog(@"Car Model: %@", _model);
        NSLog(@"Car Year: %d", _year);
        NSLog(@"Number of Gallons in Tank: %0.2f", _fuelAmount);
} else {
    NSLog(@"Car undefined: no make or model specified.");
    }
}



//removing per Properties page 50
/*
-(float)fuelAmount {
    return _fuelAmount; // return value of fuelAmount instance variable.
}


-(void)setFuelAmount:(float)fuelAmount {
    _fuelAmount = fuelAmount; // sets value of _fuelAmount instance variable to the fuelAmount argument.
}


-(int)year {
    return _year;
}


-(NSString*)make {
    return [_make copy];
}


-(NSString*)model {
    return [_model copy];
}
*/

@end
