//
//  main.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Question.h"
#import "AdditionQuestion.h"

#import "InputManager.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isPlaying = YES;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager * questionManager = [[QuestionManager alloc] init];
        
        while(isPlaying){
            
            //create a question maker
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            //add it to questionManager
            [questionManager.questions addObject:question];
            
            NSLog(@"%@",[question question]);
            
            NSString * answerString = [InputManager getUserInput];
            
            
            //check if should quit
            if([answerString isEqualToString:@"quit"]){
                NSLog(@"goodbye.");
                break;
            }
            NSNumber *intAnswer = @([answerString integerValue]);
            
            if([intAnswer isEqual:[question correctAnswer]]){
                [scoreKeeper addToScore:YES];
                NSLog(@"correct!");
                
            }else{
                [scoreKeeper addToScore:NO];
                NSLog(@"Sorry, the answer is; %@ ",[question correctAnswer]);
            }
            NSLog(@"time = %.02f",[question answerTime]);
            NSLog(@"%@",[questionManager timeOutput]);
            NSLog(@"%@", [scoreKeeper getStats]);
        }
    }
    return 0;
}
