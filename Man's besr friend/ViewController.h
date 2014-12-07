//
//  ViewController.h
//  Man's besr friend
//
//  Created by Itamar Nakar on 19/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBFDog.h"
#import "MBFPupy.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *dogs;
@property (nonatomic) int buttonPressedCounter;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLable;
@property (strong, nonatomic) IBOutlet UILabel *breadLable;


- (IBAction)nextDogButtonPressed:(id)sender;
- (IBAction)randomDogButtonPressed:(UIBarButtonItem *)sender;
@end

