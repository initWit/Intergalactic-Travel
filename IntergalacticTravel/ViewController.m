//
//  ViewController.m
//  IntergalacticTravel
//
//  Created by Robert Figueras on 5/13/14.
//  Copyright (c) 2014 AppSpaceship. All rights reserved.
//

#import "ViewController.h"
#import "VacationViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    VacationViewController *nextViewController = [segue destinationViewController];


    if ([segue.identifier isEqualToString:@"BlueStarSegue"])
    {

        nextViewController.myImage =[UIImage imageNamed:@"blueStar"];
        nextViewController.view.backgroundColor = [UIColor blueColor];
    }
    else
    {
        nextViewController.myImage =[UIImage imageNamed:@"redStar"];
        nextViewController.view.backgroundColor = [UIColor redColor];


    }

}

- (IBAction)unwindFromVacationController:(UIStoryboardSegue *)sender {
    NSLog(@"Booked it!!");
}

@end
