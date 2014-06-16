//
//  DHImageSound.h
//  ImageSound
//
//  Created by binaryboy on 6/16/14.
//  Copyright (c) 2014 AhmedHamdy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface DHImageSound : UIImageView<AVAudioPlayerDelegate>

@property (nonatomic,strong)NSString*imagePath;
@property (nonatomic,strong)NSString*soundPath;

-(id)initWithImagePath:(NSString *)imgPath withSoundFilePath:(NSString*)souPath;

@end
