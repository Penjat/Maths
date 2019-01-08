//
//  AdditionQuestion.h
//  Maths
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
@property NSNumber * correctAnswer;
-(NSString*)createQuestion;
@end

NS_ASSUME_NONNULL_END
