//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Adrian Wible on 12/29/13.
//  Copyright (c) 2013 Adrian Wible. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void) pushOperand: (double) operand;
- (double) performOperation: (NSString *) operation;

@end
