//
//  Car.h
//  CarValet
//
//  Created by Chad on 9/7/14.
//  Copyright (c) 2014 Chad Williams. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property int year;
@property NSString *make;
@property NSString *model;
@property float fuelAmount;

/*
{
    int _year;
    NSString *_make;
    NSString *_model;
    float _fuelAmount;
}
 */

-(id)initWithMake: (NSString *)make
             model: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount;

 
-(void)printCarInfo;

//removing per Properties page 50
/*
-(float)fuelAmount;
-(void)setFuelAmount:(float)fuelAmount;
-(int)year;
-(NSString*)make;
-(NSString*)model;
*/


@end
