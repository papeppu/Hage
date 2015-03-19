//
//  ViewController.h
//  ハゲ アプリ
//
//  Created by 並河龍之介 on 2014/11/20.
//  Copyright (c) 2014年 並河龍之介. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    BOOL KariFlag;
    BOOL Karimake;
    int countDown;
    int i;
    int number;
    IBOutlet UILabel *timeLabel;
    NSTimer *timer;
    IBOutlet UIImageView *hageViwe;
    NSString *imagePath[24];
    NSString *imagename[24];
    IBOutlet UIButton *koreBtn;
}

-(IBAction)ikumou;
-(IBAction)karitori;
-(IBAction)kore;
-(IBAction)tataku;

@end
