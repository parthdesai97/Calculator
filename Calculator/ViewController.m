//
//  ViewController.m
//  Calculator
//
//  Created by Parth Desai on 7/2/13.
//  Copyright (c) 2013 Parth Desai. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController;

- (CalculatorBrain *)brain
{
    if(!brain) {
        brain = [[CalculatorBrain alloc]init];
    }
    return brain;
}
- (IBAction)digitPressed:(UIButton *)sender;
{
    NSString *digit = [[sender titleLabel] text]; 
    if (userIsInTheMiddleOfTypingANumber) {
        [display setText:[[display text] stringByAppendingString:digit]];
    } else {
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}
- (IBAction)operationPressed:(UIButton *)sender;
{
    if (userIsInTheMiddleOfTypingANumber) {
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation: operation];
    [display setText:[NSString stringWithFormat:@"%g", result]];
}


@end
