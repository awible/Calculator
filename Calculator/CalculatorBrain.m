//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Adrian Wible on 12/29/13.
//  Copyright (c) 2013 Adrian Wible. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain

- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void) pushOperand: (double) operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double) popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject)[self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double) performOperation: (NSString *) operation
{
    double result;
    if ([operation isEqualToString:@"+"]) {
        result = self.popOperand + self.popOperand;
    }
    else
        result = 0;

    [self pushOperand:result];
    
    return result;
}

@end
