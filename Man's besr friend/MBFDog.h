//
//  MBFDog.h
//  Man's besr friend
//
//  Created by Itamar Nakar on 19/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MBFDog : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *bread;
@property (nonatomic) int age;
@property (nonatomic, strong) UIImage *dogImage;


-(void)bark;
-(void)barkNumberOfTimes:(int)numberOfTimes;
-(void)barkNumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoude;
-(void)chaingNameTo:(NSString *)newName;
-(int)ageInDogYearsFromHumanYears:(int)heumanYears;
@end
