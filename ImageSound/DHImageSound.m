//
//  DHImageSound.m
//  ImageSound
//
//  Created by binaryboy on 6/16/14.
//  Copyright (c) 2014 AhmedHamdy. All rights reserved.
//

#import "DHImageSound.h"

@implementation DHImageSound{
    AVAudioPlayer *player;

}
@synthesize imagePath,soundPath;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(id)initWithImagePath:(NSString *)imgPath withSoundFilePath:(NSString*)souPath{
    self=[super init];
    if (self) {
        // Initialization code
        self.imagePath=imgPath;
        self.soundPath=souPath;
        UIImage*image=[UIImage imageWithContentsOfFile:imagePath];
        self =[self initWithImage:image];
        [self prepareRecordWithFileName:self.soundPath];

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
-(void)prepareRecordWithFileName:(NSString*)path{

    NSURL *outputFileURL = [NSURL fileURLWithPath:path];
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:outputFileURL error:nil];
    [player setDelegate:self];
    player.numberOfLoops=-1;

    [player play];
    
    
}
@end
