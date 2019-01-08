//
//  main.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isPlaying = YES;
        AdditionQuestion *questionMaker = [[AdditionQuestion alloc] init];
        
        
        while(isPlaying){
        
            NSLog(@"%@",[questionMaker createQuestion]);
            
            NSString * answerString = [InputManager getUserInput];
            
            
            //check if should quit
            if([answerString isEqualToString:@"quit"]){
                break;
            }
            NSNumber *intAnswer = @([answerString integerValue]);
            
            if([intAnswer isEqual:[questionMaker correctAnswer]]){
                NSLog(@"correct!");
            }else{
                NSLog(@"Sorry, the answer is; %@ ",[questionMaker correctAnswer]);
            }
        }
    }
    return 0;
}
