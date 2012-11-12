//
//  ASGuessNumber.m
//  guessNumber
//
//  Created by WangM on 12-11-5.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASGuessNumber.h"

@implementation ASGuessNumber

-(NSString *)GuessNumber:(NSString *) rightNumbers andGuessedNumber:(NSString*) guessNumbers
{
    NSInteger iCountA = 0;
    NSInteger iCountB = 0;
    
    for (int i=0; i != NumberLength; i++) {
        NSRange rangeRightNumber =  NSMakeRange(i, 1);
        NSString * strSubRightNumber = [rightNumbers substringWithRange:rangeRightNumber];
        for (int j = 0; j != NumberLength; j++) {
            
            NSRange rangeGuessNumber =  NSMakeRange(j, 1);
            NSString * strSubGuessNumber = [guessNumbers substringWithRange:rangeGuessNumber];

            if ([strSubRightNumber isEqualToString:strSubGuessNumber]) {
                if ( i == j) {
                    iCountA++;
                    continue;
                }
                iCountB++;
            }
            
        }
    }
    
    NSString * strResult = [[NSString alloc] initWithFormat:@"%dA%dB",iCountA,iCountB];
    return strResult;
        
}

@end
