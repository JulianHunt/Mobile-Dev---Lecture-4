//
//  main.m
//  Lecture 4
//
//  Created by Julian Hunt on 1/16/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "calculator.h"
int main ( int argc,  char * argv[] )
{
    @autoreleasepool {
        
        Calculator *deskCalc  = [[Calculator alloc]  init] ;
        [deskCalc setAccumulator:  100.0] ;
        [deskCalc add:  200.0 ] ;
        [deskCalc divide:  15.0] ;
        [deskCalc subtract:  10.0] ;
        [deskCalc multiply:  5] ;
        NSLog ( @" The  result is %d and should be 50" ,  [[deskCalc accumulator]intValue] ) ;
        
    }
    return 0;
}

