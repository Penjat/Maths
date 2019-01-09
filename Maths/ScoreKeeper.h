//
//  ScoreKeeper.h
//  Maths
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

-(void)addToScore:(BOOL)wasCorrect;
-(NSString*)getStats;

@property (nonatomic,strong)NSNumber * rightAnswers;
@property (nonatomic,strong)NSNumber * wrongAnswers;
@end

NS_ASSUME_NONNULL_END
