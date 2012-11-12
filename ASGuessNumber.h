//
//  ASGuessNumber.h
//  guessNumber
//
//  Created by WangM on 12-11-5.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NumberLength 4

@interface ASGuessNumber : NSObject

-(NSString *)GuessNumber:(NSString *) rightNumbers andGuessedNumber:(NSString*) guessNumbers;

@end
