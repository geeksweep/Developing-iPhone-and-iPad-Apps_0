//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Chad Saxon on 8/3/13.
//  Copyright (c) 2013 GeekSweep Studios LLC. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonContents;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *controllerDeck;

@end

@implementation CardGameViewController


-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}


- (IBAction)flipCard:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    if(!self.controllerDeck){
        self.controllerDeck = [[PlayingCardDeck alloc] init];
    }
    
    if(sender.isSelected){
        PlayingCard *card = (PlayingCard *)[self.controllerDeck drawRandomCard];
        if(card){
            [self.buttonContents setTitle:[card contents] forState:UIControlStateSelected];
            self.flipCount++;
        }
        else{
            NSLog(@"We are all out of cards!, Drawing a new random deck.");
            self.controllerDeck = nil;
            [self setFlipCount:0];
            sender.selected = NO;
        }
    }

}


@end
