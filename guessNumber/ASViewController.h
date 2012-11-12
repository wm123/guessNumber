//
//  ASViewController.h
//  guessNumber
//
//  Created by WangM on 12-11-5.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASGameControl.h"
#import "ASGuessNumber.h"
#import "ASRandomNumber.h"

@interface ASViewController : UIViewController
{
    //UIImageView * UIImageBackgroundView;
    UILabel * resultLabel;
    UIButton * startButton;
    UITextField * inputTextField;
    
    ASGameControl * m_gameControl;
    ASGuessNumber * m_guessCompare;
    ASRandomNumber * m_randomNumber;
}

-(IBAction)startButtonClicked:(id)sender;

@end
