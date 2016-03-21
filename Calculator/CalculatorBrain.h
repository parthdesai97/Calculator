//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Parth Desai on 7/2/13.
//  Copyright (c) 2013 Parth Desai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)andOperand;
- (double)performOperation:(NSString *)operation;


@end
