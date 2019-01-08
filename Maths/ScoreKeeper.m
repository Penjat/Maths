//
//  ScoreKeeper.m
//  Maths
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
-(void)addToScore:(BOOL)wasCorrect{
    if(wasCorrect){
        _rightAnswers = @([_rightAnswers integerValue]+1);
        return;
    }
    _wrongAnswers = @([_wrongAnswers integerValue]+1);
}

-(NSString*)getStats{
    //returns a NSString with the number correct, the number wrong, and the percent correct to ) decimal places
    NSNumber * percentCorrect =
    @(([_rightAnswers floatValue]/([_rightAnswers floatValue]+[_wrongAnswers floatValue]))*100);
    return [NSString stringWithFormat:@"score: %li right , %li wrong , %li%% correct",[_rightAnswers integerValue],[_wrongAnswers integerValue],[percentCorrect integerValue]];
}
@end
