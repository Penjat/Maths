//
//  QuestionManager.h
//  Maths
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AdditionQuestion;

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property (nonatomic,strong) NSMutableArray<AdditionQuestion*> * questions;
-(id)init;
-(NSString*)timeOutput;
@end

NS_ASSUME_NONNULL_END
