//
//  guessNumberTests.h
//  guessNumberTests
//
//  Created by WangM on 12-11-5.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "ASGuessNumber.h"
#import "ASRandomNumber.h"

@interface guessNumberTests : SenTestCase
{
    ASGuessNumber * i_guessNumber;
    
    ASRandomNumber * i_randomNumber;
}

-(void)test_guess_number_is_result_4A0B;
-(void)test_guess_number_is_result_0A4B;
-(void)test_guess_number_is_result_2A2B;
-(void)test_guess_number_is_result_0A0B;

@end
