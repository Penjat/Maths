//
//  AdditionQuestion.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
-(NSString*)createQuestion{
    int firstNumber = (arc4random_uniform(80)+10);
    int secondNumber = (arc4random_uniform(80)+10);
    _correctAnswer = [NSNumber numberWithInt:(firstNumber + secondNumber)];
    
    return [NSString stringWithFormat:@"What is %i + %i",firstNumber,secondNumber];
}
@end
