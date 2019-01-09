//
//  DivisionQuestion.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-09.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "DivisionQuestion.h"
#import "Question.h"

@implementation DivisionQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}
-(void)generateQuestion{
    //answer will be with no remainder
    super.correctAnswer = @([self.leftValue integerValue] / [self.rightValue integerValue]);
    super.question =  [NSString stringWithFormat:@"What is %@ / %@",self.leftValue,self.rightValue];
}
@end
