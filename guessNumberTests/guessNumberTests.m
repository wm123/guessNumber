//
//  guessNumberTests.m
//  guessNumberTests
//
//  Created by WangM on 12-11-5.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "guessNumberTests.h"
#import "ASGuessNumber.h"
#import "ASRandomNumber.h"

@implementation guessNumberTests

- (void)setUp
{
    [super setUp];
    
    i_guessNumber = [[ASGuessNumber alloc] init];
    i_randomNumber = [[ASRandomNumber alloc] init];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
   // STFail(@"Unit tests are not implemented yet in guessNumberTests");
}

-(void)test_guess_number_is_result_4A0B
{
    NSString * strTestRight = @"1234";
    NSString * strTestGuess = @"1234";
    
    NSString * result = [i_guessNumber GuessNumber:strTestRight andGuessedNumber:strTestGuess];
    
    STAssertEqualObjects(@"4A0B", result, @"");//自动测试
}

-(void)test_guess_number_is_result_0A4B
{
    NSString * strTestRight = @"4321";
    NSString * strTestGuess = @"1234";
    
    NSString * result = [i_guessNumber GuessNumber:strTestRight andGuessedNumber:strTestGuess];
    
    STAssertEqualObjects(@"0A4B", result, @"");   
}

-(void)test_guess_number_is_result_2A2B
{
    NSString * strTestRight = @"1243";
    NSString * strTestGuess = @"1234";
    
    NSString * result = [i_guessNumber GuessNumber:strTestRight andGuessedNumber:strTestGuess];
    
    STAssertEqualObjects(@"2A2B", result, @"");
}

-(void)test_guess_number_is_result_0A0B
{
    NSString * strTestRight = @"1234";
    NSString * strTestGuess = @"5678";
    
    NSString * result = [i_guessNumber GuessNumber:strTestRight andGuessedNumber:strTestGuess];
    
    STAssertEqualObjects(@"0A0B", result, @"");
}

//-(void)test_random_number_is_result_right
//{
//    //NSString * strTestIsRandomNumber = @"1234";
//    NSString * strTestCreatedRandomNumber = [i_randomNumber CreateRandomNumber];
//    
//    
//}
@end
