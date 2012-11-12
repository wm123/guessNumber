//
//  randomNumberTests.m
//  guessNumber
//
//  Created by WangM on 12-11-8.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "randomNumberTests.h"

@implementation randomNumberTests


- (void)setUp
{
    [super setUp];
    i_randomNumber = [[ASRandomNumber alloc] init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)test_create_random_number_is_result_OK
{
    NSString * createdRandomNumber = [i_randomNumber CreateRandomNumber];
    
    for (int i = 0; i != createdRandomNumberCount; i++) {
        unichar number1 = [createdRandomNumber characterAtIndex:i];
        for (int j = 0; j != createdRandomNumberCount; j++) {
            unichar number2 = [createdRandomNumber characterAtIndex:j];
            if (i == j) {
                continue;
            }
            STAssertFalse(number1 == number2, nil);
        }
    }
}


@end
