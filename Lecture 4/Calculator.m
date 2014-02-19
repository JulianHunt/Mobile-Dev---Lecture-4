//
//  Calculator.m
//  Lecture 4
//
//  Created by Julian Hunt on 1/16/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
- ( void)  setAccumulator:  ( double)  value
{
    accumulator = [NSNumber numberWithDouble: value];
}

- ( void)  clear
{
    accumulator = [NSNumber numberWithDouble:0];
}

- ( NSNumber*)  accumulator
{
    return accumulator;
}

- (NSNumber*)  add:  ( double)  value
{
    accumulator = [NSNumber numberWithDouble:value+[accumulator doubleValue]];
    return accumulator;
}

- (NSNumber*)  subtract:  ( double)  value
{
    accumulator =[NSNumber numberWithDouble:[accumulator doubleValue]-value];
    return accumulator;
    
}

- (NSNumber*)  multiply:  ( double)  value
{
    accumulator = [NSNumber numberWithDouble:value*[accumulator doubleValue]];
    return accumulator;
}

- (NSNumber*)  divide:  ( double)  value
{
    accumulator = [NSNumber numberWithDouble:[accumulator doubleValue]/value];
    return accumulator;
}
-(NSNumber*)changeSign
{
    accumulator= [NSNumber numberWithDouble:-[accumulator doubleValue]];
    return accumulator;
}
-(NSNumber*)reciprocal
{
    accumulator=[NSNumber numberWithDouble:1/[accumulator doubleValue]];
    return accumulator;
}
-(NSNumber*)xSquared
{
    accumulator= [NSNumber numberWithDouble:[accumulator doubleValue]*[accumulator doubleValue]];
    return accumulator;
}
- (NSNumber*) memoryClear
{
    mem=[NSNumber numberWithDouble:0];
    return accumulator;
}
- (NSNumber*) memorySet
{
    mem=[NSNumber numberWithDouble:[accumulator doubleValue]];
    return accumulator;
}

- (NSNumber*) memoryRecall
{
    accumulator=[NSNumber numberWithDouble:[mem doubleValue]];
    return accumulator;
}
-(NSNumber*)memoryStore
{
    return 0;
}
-(NSNumber*) memoryAdd: (double) value
{
    mem=[NSNumber numberWithDouble:value+[accumulator doubleValue]];
    return accumulator;
}
-(NSNumber*)memorySubtract:(double)value
{
    mem=[NSNumber numberWithDouble:[accumulator doubleValue]-value];
    return accumulator;
}








@end
