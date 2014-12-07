//
//  MBFPupy.m
//  Man's besr friend
//
//  Created by Itamar Nakar on 23/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import "MBFPupy.h"

@implementation MBFPupy

-(void)givePupyEays{
    NSLog(@":(\n%@\n%@\n",self.name,self.bread);
}

// An example for a subclass override method
-(void)bark{
    [super bark]; // Using the original functenality of 'bark' method
    NSLog(@"whimper whimper");
    [self givePupyEays];
}

@end
