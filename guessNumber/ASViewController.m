//
//  ASViewController.m
//  guessNumber
//
//  Created by WangM on 12-11-5.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"blueskyback.jpg"]];
   
    startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startButton.frame = CGRectMake(228, 150, 85, 50);
//    UIImage * buttonbg = [UIImage imageNamed:@"bird1.png"];
//    UIImage * buttonbg2 = [UIImage imageNamed:@"bird2.png"];
//    [startButton setBackgroundImage:buttonbg forState:UIControlStateNormal];
//    [startButton setBackgroundImage:buttonbg2 forState:UIControlStateHighlighted];
    [self.view addSubview:startButton];
    UILabel * label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(10, 10, 100, 30);
    label1.text = @"开始猜数";
    label1.backgroundColor = [UIColor clearColor];
    [startButton addSubview:label1];
    
    resultLabel = [[UILabel alloc] init];
    resultLabel.frame = CGRectMake(10, 70, 300, 50);
    [resultLabel setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:resultLabel];
    
    inputTextField = [[UITextField alloc] init];
    inputTextField.frame = CGRectMake(10, 150, 210, 50);
    inputTextField.font = [UIFont fontWithName:@"Arial" size:40.0f];
    [inputTextField setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:inputTextField];
    
    inputTextField.keyboardType = UIKeyboardTypeNumberPad;//数字键盘
    inputTextField.clearsOnBeginEditing = YES;//再次编辑就清空
    
    m_randomNumber = [[ASRandomNumber alloc] init];
    NSString * rightNumber = [m_randomNumber CreateRandomNumber];
    NSLog(@"本次游戏的rightNumber ：%@",rightNumber);
    
    m_gameControl = [[ASGameControl alloc] init:6 andRightNumber:rightNumber];
    m_guessCompare = [[ASGuessNumber alloc] init];
    
    [startButton addTarget:self action:@selector(startButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [inputTextField addTarget:self action:@selector(ForbidTextFieldLength) forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startButtonClicked:(id)sender
{
    NSString * guessNumber = inputTextField.text;
    
    NSString * thisTimeResult = [m_gameControl GameResult:guessNumber];
    resultLabel.text = [[NSString alloc] initWithFormat:@"%@  结果:%@",guessNumber,thisTimeResult];
    
    BOOL bResetResult1 = [thisTimeResult isEqualToString:@"4A0B"];
    BOOL bResetResult2 = [thisTimeResult isEqualToString:@"gameOver"];
    
    if (bResetResult1||bResetResult2){
        NSString * strNewRightNumber = [m_randomNumber CreateRandomNumber];
        NSLog(@"本次游戏的rightNumber ：%@",strNewRightNumber);
        [m_gameControl resetGame:6 andRightNumber:strNewRightNumber];
    }
    
    inputTextField.text = @"";
}

-(void)ForbidTextFieldLength
{
    BOOL bRet = [self CheckSameNumber];
    if (bRet == TRUE) {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"重复啦" message:@"请输入不相同的4位数字！"delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        inputTextField.text = [inputTextField.text substringFromIndex:inputTextField.text.length-1];
    }
        
    if (inputTextField.text.length > 4) {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"太多啦" message:@"请不相同的输入4位数字！"delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        inputTextField.text = [inputTextField.text substringToIndex:4];
    }
}

-(BOOL)CheckSameNumber
{
    for (int i = 0; i != inputTextField.text.length; i++) {
        unichar number1 = [inputTextField.text characterAtIndex:i];
        for (int j = i+1; j != inputTextField.text.length; j++) {
            unichar number2 = [inputTextField.text characterAtIndex:j];
            if (number1 == number2) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

@end
