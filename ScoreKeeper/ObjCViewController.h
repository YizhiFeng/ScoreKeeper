//
//  ObjCViewController.h
//  ScoreKeeper
//
//  Created by FengYizhi on 2018/3/20.
//  Copyright © 2018年 FengYizhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *roundLabel;

@property (weak, nonatomic) IBOutlet UIButton *theNewGameBtn;
@property (weak, nonatomic) IBOutlet UIButton *enterRoundBtn;

@property (weak, nonatomic) IBOutlet UITextField *p1ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField *p2ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField *p3ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField *p4ScoreTextField;

@property (weak, nonatomic) IBOutlet UITextView *p1SocresTextView;
@property (weak, nonatomic) IBOutlet UITextView *p2SocresTextView;
@property (weak, nonatomic) IBOutlet UITextView *p3SocresTextView;
@property (weak, nonatomic) IBOutlet UITextView *p4SocresTextView;

- (IBAction)pressedNewGame:(id)sender;
- (IBAction)pressedEnterRound:(id)sender;

@end
