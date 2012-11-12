//
//  ASGameControl.h
//  guessNumber
//
//  Created by WangM on 12-11-7.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASRandomNumber.h"
#import "ASGuessNumber.h"

@interface ASGameControl : NSObject
{
    ASRandomNumber * m_randomNumber;
    ASGuessNumber * m_guessCompare;
    NSUInteger m_nPlayedTime;
    NSString * m_strRightNumber;
}

-(id)init:(NSUInteger)gamePlayTime andRightNumber:(NSString *)rightNumbers;
-(NSString *)GameResult:(NSString *)guessNumber;
-(void)resetGame:(NSUInteger)gamePlayTime andRightNumber :(NSString *)rightNumber;

@end
