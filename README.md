ImageSound iOS
==============
Custom UIImageView With Sound
  in .h
  
  
  
    @property (strong, nonatomic) IBOutlet DHImageSound *image;







  in .m
  
  
  
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"happy" ofType:@"jpg"];
    NSString *mp3Path = [[NSBundle mainBundle] pathForResource:@"beep" ofType:@"mp3"];
    image=  [image initWithImagePath:imagePath withSoundFilePath:mp3Path];
