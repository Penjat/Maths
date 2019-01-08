//
//  InputManager.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager
+(NSString*)getUserInput{
    
    char answerInput[10];
    fgets(answerInput,10,stdin);
    
    NSString * answerString = [NSString stringWithCString:answerInput encoding:NSUTF8StringEncoding];
    answerString = [answerString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return answerString;
}
@end
