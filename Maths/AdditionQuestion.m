//
//  AdditionQuestion.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (NSNumber*)correctAnswer {
    _endTime = [NSDate date];
    return _correctAnswer;
}
-(NSTimeInterval)answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
    
}
-(id)init{
    self = [super init];
    if(self){
        self.startTime = [NSDate date];
        int firstNumber = (arc4random_uniform(80)+10);
        int secondNumber = (arc4random_uniform(80)+10);
        _correctAnswer = [NSNumber numberWithInt:(firstNumber + secondNumber)];
        _question =  [NSString stringWithFormat:@"What is %i + %i",firstNumber,secondNumber];
    }
    return self;
}
@end
