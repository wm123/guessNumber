//
//  gameControlTests.m
//  guessNumber
//
//  Created by WangM on 12-11-8.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "gameControlTests.h"
#import "ASGameControl.h"

@implementation gameControlTests

- (void)setUp
{
    [super setUp];

    i_gameControl = [[ASGameControl alloc] init:6 andRightNumber:@"1234"];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)test_game_control_is_result_gameSucceed
{
    NSString * strGuessNumber = [[NSString alloc] initWithFormat:@"1234"];
    
    NSString * strTestResult = [i_gameControl GameResult:strGuessNumber];
    
    STAssertEqualObjects(@"4A0B", strTestResult, @"");
}

-(void)test_game_control_is_result_gameOver
{
    NSString * strGuessNumber = @"5678";
    NSString * strLastTestResult;
    
    for (int i = 0; i != 6; i++) {
        strLastTestResult = [i_gameControl GameResult:strGuessNumber];
    }
    
    STAssertEqualObjects(@"gameOver", strLastTestResult, @"");
}

-(void)test_game_control_is_result_gameContinue
{
    NSString * strGuessNumber = @"1243";
    
    NSString * strTestResult = [i_gameControl GameResult:strGuessNumber];
    
    STAssertEqualObjects(@"2A2B", strTestResult, @"");

}
@end
