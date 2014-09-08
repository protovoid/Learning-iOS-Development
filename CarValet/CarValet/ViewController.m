//
//  ViewController.m
//  CarValet
//
//  Created by Chad on 9/7/14.
//  Copyright (c) 2014 Chad Williams. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "HybridCar.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    Car *myCar = [[Car alloc] init]; // myCar object allocated and initialized as instance of Car class.
    [myCar printCarInfo]; // printCarInfo method called, currently undefined.
    myCar.make = @"Ford"; // variables set.
    myCar.model = @"Escape";
    myCar.year = 2014;
    myCar.fuelAmount = 10.0f;
    
    [myCar printCarInfo]; // printCarInfo method called again, but this time make & model are set.
    
    Car *otherCar = [[Car alloc] initWithMake:@"Honda" model:@"Accord" year:2010 fuelAmount:12.5f]; // new car created & variables set.
    
    [otherCar printCarInfo]; // printCarinfo method called on new car.
    
    HybridCar *myHybrid = [[HybridCar alloc] initWithMake:@"Toyota" model:@"Prius" year:2012 fuelAmount:8.3f MPG:42.0f];
    
    [myHybrid printCarInfo];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
