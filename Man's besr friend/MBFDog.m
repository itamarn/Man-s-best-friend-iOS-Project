//
//  MBFDog.m
//  Man's besr friend
//
//  Created by Itamar Nakar on 19/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"Woof Woof!");
}

-(void)barkNumberOfTimes:(int)numberOfTimes
{
    for (int i = 0; i < numberOfTimes; numberOfTimes++) {
        NSLog(@"Woof Woof!");
    }
}

-(void)barkNumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoude
{
    if (!isLoude) {
        for (int i = 0; i < numberOfTimes; i++) {
            NSLog(@"woof woof!");
        }
    } else {
        for (int i = 0; i < numberOfTimes; i++) {
            NSLog(@"WOOF WOOF!");
        }
    }
}

-(void)chaingNameTo:(NSString *)newName
{
    self.name = newName;
}

-(int)ageInDogYearsFromHumanYears:(int)heumanYears
{
    int dogsYears = heumanYears *7;
    return dogsYears;
}


@end
