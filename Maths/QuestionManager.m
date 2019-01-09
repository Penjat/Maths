//
//  QuestionManager.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager
-(id)init{
    self = [super init];
    if(self){
        self.questions = [[NSMutableArray alloc] init];
    }
    return self;
}
-(NSString*)timeOutput{
    NSNumber* totalTime = @0;
    
    for (AdditionQuestion * question in self.questions) {
        totalTime = @([totalTime doubleValue] + [question answerTime] );
    }
    NSNumber* averageTime = @([totalTime floatValue]/_questions.count);
    
    return [NSString stringWithFormat:@"total time:%@s , average time:%@s",totalTime,averageTime];
}
@end