//
//  ObjCViewController.m
//  ScoreKeeper
//
//  Created by FengYizhi on 2018/3/20.
//  Copyright © 2018年 FengYizhi. All rights reserved.
//

#import "ObjCViewController.h"

@implementation ObjCViewController

int roundNumber = 1;
int playerScores[4] = {0, 0, 0, 0};
NSArray *scoreTextFields;
NSArray *scoresTextViews;

- (void) viewDidLoad {
    [super viewDidLoad];
    scoreTextFields = [[NSArray alloc] initWithObjects:self.p1ScoreTextField, self.p2ScoreTextField, self.p3ScoreTextField, self.p4ScoreTextField, nil];
    scoresTextViews = [[NSArray alloc] initWithObjects:self.p1SocresTextView, self.p2SocresTextView, self.p3SocresTextView, self.p4SocresTextView, nil];
    [self resetGame];
}
- (IBAction) pressedEnterRound:(id)sender {
    [self enterScores];
}

- (IBAction) pressedNewGame:(id)sender {
    [self resetGame];
}

- (void) resetGame {
    roundNumber = 1;
    self.roundLabel.text = [NSString stringWithFormat:@"Round %d", roundNumber];
    for (int i = 0; i < 4; i++) {
        playerScores[i] = 0;
        ((UITextField*)(scoreTextFields[i])).text = @"";
        ((UITextView*)(scoresTextViews[i])).text = @"";
    }
}

- (void) enterScores {
    for (int i = 0; i < 4; i++) {
        NSString* textInTextField = ((UITextField*)(scoreTextFields[i])).text;
        playerScores[i] += [textInTextField intValue];
        if (((UITextView*)(scoresTextViews[i])).text.length == 0) {
            ((UITextView*)(scoresTextViews[i])).text = [NSString stringWithFormat:@"%d", playerScores[i]];
        } else {
            ((UITextView*)(scoresTextViews[i])).text = [NSString stringWithFormat:@"%@\n%d", ((UITextView*)(scoresTextViews[i])).text, playerScores[i]];
        }
        ((UITextView*)(scoresTextViews[i])).textAlignment = NSTextAlignmentCenter;
        ((UITextField*)(scoreTextFields[i])).text = @"";
    }
    roundNumber++;
    self.roundLabel.text = [NSString stringWithFormat:@"Round %d", roundNumber];
    [self.view endEditing:YES];
}
@end
