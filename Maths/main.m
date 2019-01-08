//
//  main.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL isPlaying = YES;
        AdditionQuestion *questionMaker = [[AdditionQuestion alloc] init];
        while(isPlaying){
        
            char answerInput[10];
            NSLog(@"%@",[questionMaker createQuestion]);
            fgets(answerInput,10,stdin);
            NSString * answerString = [NSString stringWithCString:answerInput encoding:NSUTF8StringEncoding];
            
            
            answerString = [answerString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
           // NSNumber * answerNumber =
            NSLog(@"%@",answerString);
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
