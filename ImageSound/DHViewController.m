//
//  DHViewController.m
//  ImageSound
//
//  Created by binaryboy on 6/16/14.
//  Copyright (c) 2014 AhmedHamdy. All rights reserved.
//

#import "DHViewController.h"
#import "DHImageSound.h"
@interface DHViewController ()

@end

@implementation DHViewController
@synthesize image;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"happy" ofType:@"jpg"];
    NSString *mp3Path = [[NSBundle mainBundle] pathForResource:@"beep" ofType:@"mp3"];
    image=  [image initWithImagePath:imagePath withSoundFilePath:mp3Path];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
