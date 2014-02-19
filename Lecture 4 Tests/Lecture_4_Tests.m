//
//  Lecture_4_Tests.m
//  Lecture 4 Tests
//
//  Created by Julian Hunt on 1/16/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "calculator.h"
@interface Lecture_4_Tests : XCTestCase

@end

@implementation Lecture_4_Tests


- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    
}	
-(void)testAdd
{
    double temp=3;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    XCTAssertEqual(temp, [[deskCalc add:3] doubleValue], @"Addition failed");
    
}
-(void)testSubtract
{
    double temp=-3;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    XCTAssertEqual(temp, [deskCalc subtract:3], @"Subtract failed");
    
}
-(void)testMultiply
{
    double temp=0;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    XCTAssertEqual(temp, [deskCalc multiply:3], @"Multiply failed");
}
-(void)testDivide
{
    double temp=0;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    XCTAssertEqual(temp, [deskCalc divide:3], @"Divide failed");
    
}
-(void)testChangeSign
{
    double temp=3;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc setAccumulator:-3];
    XCTAssertEqual(temp, [deskCalc changeSign], @"ChangeSign failed");
}
-(void)testReciprocal
{
    double temp=3;
    temp=1/temp;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc setAccumulator:3];
    XCTAssertEqual(temp, [deskCalc reciprocal], @"Reciprocal failed");
}
-(void)testSquared
{
    double temp=9;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc setAccumulator:3];
    XCTAssertEqual(temp, [deskCalc xSquared], @"xSquared Failed");
}
-(void)testMemoryClear
{
    double temp=0;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc setMem:10];
    [deskCalc memoryClear];
    XCTAssertEqual(temp, [deskCalc mem], @"MemoryClear Failed");
}
-(void)testMemorySet
{
    double temp=5;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc setAccumulator:5];
    [deskCalc memorySet];
    XCTAssertEqual(temp, [deskCalc mem], @"Memory Set Fail");
}
-(void)testMemoryRecall
{
    double temp=10;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc setMem:10];
    XCTAssertEqual(temp, [deskCalc memoryRecall], @"Memory Recall Fail");
}
-(void)testMemoryAdd
{
    double temp=10;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc memoryAdd:10];
    XCTAssertEqual(temp, [deskCalc mem], @"MemoryAdd Fail");
}
-(void)testMemorySubtract
{
    double temp=-10;
    Calculator *deskCalc  = [[Calculator alloc]  init] ;
    [deskCalc memorySubtract:10];
    XCTAssertEqual(temp, [deskCalc mem], @"MemorySubtract Fail");
}

@end
