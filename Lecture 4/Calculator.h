//
//  Calculator.h
//  Lecture 4
//
//  Created by Julian Hunt on 1/16/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator:  NSObject
{
    NSNumber*  mem;
    NSNumber*  accumulator;
}

// accumulator methods
- (void)    setAccumulator:  (double)  value;
- (void)    clear;
- (NSNumber*)  accumulator;



// arithmetic methods
- (NSNumber*)  add:  ( double)  value;
- (NSNumber*)  subtract:  ( double)  value;
- (NSNumber*)  multiply:  ( double)  value;
- (NSNumber*)  divide:  ( double)  value;
- (NSNumber*)  changeSign;
- (NSNumber*)  reciprocal;
- (NSNumber*)  xSquared;
- (NSNumber*)  memoryClear;
- (NSNumber*)  memorySet;
- (NSNumber*)  memoryStore;
- (NSNumber*)  memoryRecall;
- (NSNumber*)  memoryAdd: (double) value;
- (NSNumber*)  memorySubtract: (double)  value;
@end


