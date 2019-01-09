//
//  AdditionQuestion.h
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic,strong) NSNumber * leftValue;
@property (nonatomic,strong) NSNumber * rightValue;

@property (nonatomic,strong) NSString * question;
@property (nonatomic,strong) NSNumber * correctAnswer;

@property (nonatomic,strong) NSDate * startTime;
@property (nonatomic,strong) NSDate * endTime;

-(id)init;
-(void)generateQuestion;
-(NSTimeInterval)answerTime;
@end

NS_ASSUME_NONNULL_END
