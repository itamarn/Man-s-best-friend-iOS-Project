//
//  ViewController.m
//  Man's besr friend
//
//  Created by Itamar Nakar on 19/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dogs = [NSMutableArray array];
    
    MBFDog *myFirstDog = [[MBFDog alloc]init];
    myFirstDog.name = @"St.Bernardy";
    myFirstDog.bread = @"St.Bernard";
    myFirstDog.age = [myFirstDog ageInDogYearsFromHumanYears:7];
    myFirstDog.dogImage = [UIImage imageNamed:@"St.Bernard.JPG"];
    [self.dogs addObject:myFirstDog];
    
    MBFDog *myThirdDog = [[MBFDog alloc]init];
    myThirdDog.name = @"BorderColliey";
    myThirdDog.bread = @"BorderCollie";
    myThirdDog.age = [myThirdDog ageInDogYearsFromHumanYears:7];
    myThirdDog.dogImage = [UIImage imageNamed:@"BorderCollie.jpg"];
    [self.dogs addObject:myThirdDog];

    MBFDog *myFourrthDog = [[MBFDog alloc]init];
    myFourrthDog.name = @"ItalianGreyhoundy";
    myFourrthDog.bread = @"ItalianGreyhound";
    myFourrthDog.age = [myFourrthDog ageInDogYearsFromHumanYears:7];
    myFourrthDog.dogImage = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    [self.dogs addObject:myFourrthDog];

    MBFDog *myFifthDog = [[MBFDog alloc]init];
    myFifthDog.name = @"JRTY";
    myFifthDog.bread = @"Jack Russell Terrier";
    myFifthDog.age = [myFifthDog ageInDogYearsFromHumanYears:7];
    myFifthDog.dogImage = [UIImage imageNamed:@"JRT.jpg"];
    [self.dogs addObject:myFifthDog];
    
    // Our first Subclass!
    MBFPupy *myPupy = [[MBFPupy alloc]init];
    myPupy.name = @"Boy";
    myPupy.bread = @"Bo";
    myPupy.age = [myPupy ageInDogYearsFromHumanYears:1];
    myPupy.dogImage = [UIImage imageNamed:@"bo.jpg"];
    [self.dogs addObject:myPupy];
    //[myPupy givePupyEays];
    [myPupy barkNumberOfTimes:1 loudly:NO];
    

    
    self.buttonPressedCounter = 0;
    self.myImageView.image = [[self.dogs objectAtIndex: self.buttonPressedCounter] dogImage];
    self.nameLable.text = [[self.dogs objectAtIndex: self.buttonPressedCounter] name];
    self.breadLable.text = [[self.dogs objectAtIndex: self.buttonPressedCounter] bread];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextDogButtonPressed:(id)sender {
     self.buttonPressedCounter++;
    
   if ( self.buttonPressedCounter >= self.dogs.count) {// If pass
         self.buttonPressedCounter = 0;
    }
    
    self.myImageView.image = [[self.dogs objectAtIndex: self.buttonPressedCounter] dogImage];
    self.nameLable.text = [[self.dogs objectAtIndex: self.buttonPressedCounter] name];
    self.breadLable.text = [[self.dogs objectAtIndex: self.buttonPressedCounter] bread];
    
}

- (IBAction)randomDogButtonPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.dogs count];
    int randomNumber = arc4random() % numberOfDogs;
    
    // Optimaizing the random flow of objects
    if (self.buttonPressedCounter == randomNumber && self.buttonPressedCounter == 0) {
        randomNumber++;
    } else if (self.buttonPressedCounter == randomNumber){
        randomNumber--;
    }

    MBFDog *rendomDog = [self.dogs objectAtIndex:randomNumber];
    
//    self.myImageView.image = [rendomDog dogImage];
//    self.nameLable.text = [rendomDog name];
//    self.breadLable.text = [rendomDog bread];
    
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionTransitionCurlUp animations:^{
            self.myImageView.image = [rendomDog dogImage];
            self.nameLable.text = [rendomDog name];
            self.breadLable.text = [rendomDog bread];
    } completion:^(BOOL finished) {
        
    }];
    
    self.buttonPressedCounter = randomNumber;
    sender.title = @"Next one!";
}

@end








