//
//  ViewController.m
//  ハゲ アプリ
//
//  Created by 並河龍之介 on 2014/11/20.
//  Copyright (c) 2014年 並河龍之介. All rights reserved.
//
@import GoogleMobileAds;
#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()
@property(nonatomic, strong) GADInterstitial *interstitial;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.interstitial = [[GADInterstitial alloc] init];
    self.interstitial.adUnitID = @"ca-app-pub-3418230555464706/1184311872";
    
    GADRequest *request = [GADRequest request];
    // Requests test ads on simulators.
    request.testDevices = [NSArray arrayWithObjects:
                           @"YOUR_SIMULATOR_IDENTIFIER",
                           @"YOUR_DEVICE_IDENTIFIER",
                           nil];
    [self.interstitial loadRequest:request];
    
    if ([self.interstitial isReady]) {
        [self.interstitial presentFromRootViewController:self];
    }
    
    // Do any additional setup after loading the view.
    
    KariFlag = NO;
    
    imagePath[0]=@"rong.png";
    imagePath[1]=@"nomaru.png";
    imagePath[2]=@"mae.png";
    imagePath[3]=@"klkl.png";
    imagePath[4]=@"tya.png";
    imagePath[5]=@"afuro.png";
    imagePath[6]=@"atama.png";
    imagePath[7]=@"unnti.png";
    imagePath[8]=@"mohi.png";
    imagePath[9]=@"usamimi.png";
    imagePath[10]=@"mesi.png";
    imagePath[11]=@"popi.png";
    imagePath[12]=@"nezumi.png";
    imagePath[13]=@"oni.png";
    imagePath[14]=@"dadee.png";
    imagePath[15]=@"iPhone.png";
    imagePath[16]=@"nekomimi.png";
    imagePath[17]=@"kappa.png";
    imagePath[18]=@"sabo.png";
    imagePath[19]=@"sum.png";
    imagePath[20]=@"ki.png";
    imagePath[21]=@"gorinn.png";
    imagePath[22]=@"taiyaki.png";
    imagePath[23]=@"riaru.png";
    
    
    imagename[0]=@"ロン毛";
    imagename[1]=@"普通の髪型";
    imagename[2]=@"前髪長め";
    imagename[3]=@"チリチリヘアー";
    imagename[4]=@"茶髪";
    imagename[5]=@"アフロヘアー";
    imagename[6]=@"頭の住人";
    imagename[7]=@"うんち";
    imagename[8]=@"モヒカン";
    imagename[9]=@"うさ耳";
    imagename[10]=@"梅干ごはん";
    imagename[11]=@"ポピー";
    imagename[12]=@"夢ネズミだよ！ハッハ！";
    imagename[13]=@"鬼の角";
    imagename[14]=@"ダディーの手ぬぐい";
    imagename[15]=@"そう、IPhoneならね♪";
    imagename[16]=@"猫耳";
    imagename[17]=@"カッパ巻き";
    imagename[18]=@"サボテン";
    imagename[19]=@"サンプル";
    imagename[20]=@"庭の木";
    imagename[21]=@"五輪";
    imagename[22]=@"たい焼き";
    imagename[23]=@"リアルハゲ";
    

    }


-(IBAction)ikumou{
    
    
    if (KariFlag == YES) {
        UIAlertView *alert2 =
        [[UIAlertView alloc] initWithTitle:@"髪の毛が泣いています" message:@"髪の毛を刈り取ってください"
                                  delegate:self cancelButtonTitle:@"了解！" otherButtonTitles:nil];
        [alert2 show];
        
    }
    if (KariFlag == NO) {
        timer = [NSTimer
                 scheduledTimerWithTimeInterval:1
                 target: self
                 selector:@selector(TimerAction)
                 userInfo:nil
                 repeats:YES];
        countDown = 120; //　設定時間「60秒」
        
        KariFlag = YES;
    }
}




-(IBAction)kore{
    if (KariFlag == YES) {
        UIAlertView *alert2 =
        [[UIAlertView alloc] initWithTitle:@"髪の毛が泣いています" message:@"髪の毛を刈り取ってください"
                                  delegate:self cancelButtonTitle:@"了解！" otherButtonTitles:nil];
        [alert2 show];
    }else{
        SecondViewController *ViewController2 = [self.storyboard instantiateViewControllerWithIdentifier:@"Second"];
        [self presentViewController:ViewController2 animated:YES completion:nil];
    }
}
-(void)TimerAction{
    if(countDown>0){
        countDown--;
        [timeLabel setText:[NSString stringWithFormat:@"%d",countDown]]; // ラベルに時間を表示
    }else{
        [timer invalidate]; // タイマーを停止する
        i = rand()%24;
        hageViwe.image = [UIImage imageNamed:imagePath[i]];
        
    }
}
-(IBAction)tataku{
    if(countDown > 10){
    countDown = countDown - 1;
    }
}
-(IBAction)karitori{
    if(KariFlag == YES){
        KariFlag = NO;
        hageViwe.image = [UIImage imageNamed:@"HG.png"];
        
        UIAlertView *alert =
        [[UIAlertView alloc] initWithTitle:@"育毛成功" message:[NSString stringWithFormat:@"%@を刈り取りました！",imagename[i]]
                                  delegate:self cancelButtonTitle:@"了解！" otherButtonTitles:nil];
        [alert show];
        
        NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
        [userDefaults setBool:YES forKey:[NSString stringWithFormat:@"%d",i]];
        [userDefaults synchronize];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
