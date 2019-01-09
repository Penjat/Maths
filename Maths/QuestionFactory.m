//
//  QuestionFactory.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-09.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

-(instancetype)init{
    self = [super init];
    if(self){
        self.questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}

-(Question*)randomQuestion{
    //TODO make random
    NSNumber * rand = @(arc4random_uniform(self.questionSubclassNames.count));
    NSString * className = [self.questionSubclassNames objectAtIndex:[rand unsignedIntegerValue] ];
    return [[NSClassFromString(className) alloc]init];
}
@end
