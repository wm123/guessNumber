//
//  ASGameControl.m
//  guessNumber
//
//  Created by WangM on 12-11-7.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASGameControl.h"
#import "ASGuessNumber.h"

@implementation ASGameControl

-(id)init:(NSUInteger)gamePlayTime andRightNumber :(NSString *)rightNumbers
{
    if (self = [super init])
    {
        m_guessCompare = [[ASGuessNumber alloc] init];
        m_strRightNumber = rightNumbers;
        m_nPlayedTime = gamePlayTime;
    }
    
    return self;
}

-(NSString *)GameResult:(NSString *)guessNumber
{        
    NSString * result = [m_guessCompare GuessNumber:m_strRightNumber andGuessedNumber:guessNumber];
    m_nPlayedTime--;
    
    if ([result isEqualToString: @"4A0B"]) {//这里不能直接判等
        NSLog(@"猜对了！");
        NSString * strGameSucceed = [[NSString alloc] initWithFormat:@"%@",result];
        return strGameSucceed;
    }
    else
    {
        if (m_nPlayedTime !=0) {
            NSLog(@"结果是%@,你还有%d次机会,请再接再厉",result,m_nPlayedTime);
                
            NSString * strGameContinue = [[NSString alloc] initWithFormat:@"%@",result];//改：返回nAnB
            return strGameContinue;
        }
    }
    
    NSLog(@"猜数次数用完,Game Over");
    NSString * strGameOver = [[NSString alloc] initWithFormat:@"gameOver"];
    return strGameOver;
}

-(void)resetGame:(NSUInteger)gamePlayTime andRightNumber :(NSString *)rightNumber
{
    m_nPlayedTime = 6;
    m_strRightNumber = rightNumber;
}

@end
