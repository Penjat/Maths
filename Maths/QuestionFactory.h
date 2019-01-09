//
//  QuestionFactory.h
//  Maths
//
//  Created by Spencer Symington on 2019-01-09.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic,strong) NSArray * questionSubclassNames;
-(instancetype)init;
-(Question*)randomQuestion;
@end

NS_ASSUME_NONNULL_END
