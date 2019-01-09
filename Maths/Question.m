//
//  AdditionQuestion.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "Question.h"

@implementation Question


- (NSNumber*)correctAnswer {
    _endTime = [NSDate date];
    return _correctAnswer;
}
-(NSTimeInterval)answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
    
}
-(void)generateQuestion{
    //do nothing here, is overriden in subclasses
}
-(id)init{
    self = [super init];
    if(self){
        self.startTime = [NSDate date];
        self.leftValue = @(arc4random_uniform(80)+10);
        self.rightValue= @(arc4random_uniform(80)+10);
       
        
    }
    return self;
}
@end
