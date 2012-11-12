//
//  ASRandomNumber.m
//  guessNumber
//
//  Created by WangM on 12-11-7.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASRandomNumber.h"

@implementation ASRandomNumber

-(NSString *)CreateRandomNumber
{

    int * arrFlagNumbers = malloc(sizeof(int)*arrFlagNumbersLength);
    memset(arrFlagNumbers, 0, sizeof(int)*arrFlagNumbersLength);
    
 
    int * arrRandomNumbers = malloc(sizeof(int)*arrRandomNumbersLength);
    memset(arrRandomNumbers, -1, sizeof(int)*arrRandomNumbersLength);
    
    for (int i = 0; i != arrRandomNumbersLength;) {
        
        int iRandomNumber = arc4random() % (10);
        
        if (arrFlagNumbers[iRandomNumber] != 0) {
            continue;
        }
        arrFlagNumbers[iRandomNumber] = 1;
        
        arrRandomNumbers[i] = iRandomNumber;
        
        i++;
    }
    
    NSString * strFinalRandomNumber = [[NSString alloc] initWithFormat:@"%d%d%d%d",arrRandomNumbers[0],arrRandomNumbers[1],arrRandomNumbers[2],arrRandomNumbers[3]];
    
    free(arrRandomNumbers);
    free(arrFlagNumbers);
    
    return strFinalRandomNumber;    
}

//    NSString * number1 = [[NSString alloc] init];
//    NSString * number2 = [[NSString alloc] init];
//    NSString * number3 = [[NSString alloc] init];
//    NSString * number4 = [[NSString alloc] init];

//    NSArray * numbersArray = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0",nil];
//    for (int i = 1 ; i != numbersArray.count; i++) {
//
//    }

//    int number1 = arc4random() % (10);
//    int number2 = arc4random() % (10);
//    int number3 = arc4random() % (10);
//    int number4 = arc4random() % (10);

//    NSMutableArray * numbersArray = [[NSMutableArray alloc] initWithCapacity:0];
//    int *nData = malloc(sizeof(int)*numbersArrayLength);
//
//    int iRandomNumber = arc4random() % (10);
//    nData[0] = iRandomNumber;
//
//
//    for (int i = 1; i != numbersArrayLength; i++) {
//
//        int iRandomNumber = arc4random() % (10);
//        NSString * strRandomNumber = [[NSString alloc] initWithFormat:@"%d",iRandomNumber];
//
//        if ([numbersArray containsObject:strRandomNumber]){//是否包含
//            continue;
//        }
//        [numbersArray addObject:strRandomNumber];//数组的元素都是对象
//    }
//
//    NSString * number1 = [numbersArray objectAtIndex:0];
//    NSString * number2 = [numbersArray objectAtIndex:1];
//    NSString * number3 = [numbersArray objectAtIndex:2];
//    NSString * number4 = [numbersArray objectAtIndex:3];



//    for (int i = 0; i != numbersArrayLength; i++) {
//
//        int iRandomNumber = arc4random() % (10);
//
//        for (int j = 0; j != numbersArrayLength; ) {
//            if (arrNumbers[j] == iRandomNumber) {
//                iRandomNumber = arc4random() % (10);
//                j = 0;
//                continue;
//            }
//            j++;
//        }
//        arrNumbers[i] = iRandomNumber;
//    }

//就是用一个10个单位的数组给初始化为0，作为flag值。没取一个数，这个数的flag值变为-1，然后循环一次取值，若flag！=0，i就不变，否则，++

@end
