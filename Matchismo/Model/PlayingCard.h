//
//  PlayingCard.h
//  Lecture1_Stanford_IOS_Winter2013
//
//  Created by Chad Saxon on 8/2/13.
//  Copyright (c) 2013 GeekSweep Studios LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;
@end
