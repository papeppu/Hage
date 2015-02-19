//
//  SecondViewController.m
//  ハゲ アプリ
//
//  Created by 並河龍之介 on 2014/11/20.
//  Copyright (c) 2014年 並河龍之介. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //ViewControllerを真似しよう！
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
    

    
    NSUserDefaults *userDefalts = [NSUserDefaults standardUserDefaults];
    kamiflag1 = [userDefalts boolForKey:@"0"];
    kamiflag2 = [userDefalts boolForKey:@"1"];
    kamiflag3 = [userDefalts boolForKey:@"2"];
    kamiflag4 = [userDefalts boolForKey:@"3"];
    kamiflag5 = [userDefalts boolForKey:@"4"];
    kamiflag6 = [userDefalts boolForKey:@"5"];
    kamiflag7 = [userDefalts boolForKey:@"6"];
    kamiflag8 = [userDefalts boolForKey:@"7"];
    kamiflag9 = [userDefalts boolForKey:@"8"];
    kamiflag10 = [userDefalts boolForKey:@"9"];
    kamiflag11 = [userDefalts boolForKey:@"10"];
    kamiflag12 = [userDefalts boolForKey:@"11"];
    kamiflag13 = [userDefalts boolForKey:@"12"];
    kamiflag14 = [userDefalts boolForKey:@"13"];
    kamiflag15 = [userDefalts boolForKey:@"14"];
    kamiflag16 = [userDefalts boolForKey:@"15"];
    kamiflag17 = [userDefalts boolForKey:@"16"];
    kamiflag18 = [userDefalts boolForKey:@"17"];
    kamiflag19 = [userDefalts boolForKey:@"18"];
    kamiflag20 = [userDefalts boolForKey:@"19"];
    kamiflag21 = [userDefalts boolForKey:@"20"];
    kamiflag22 = [userDefalts boolForKey:@"21"];
    kamiflag23 = [userDefalts boolForKey:@"22"];
    kamiflag24 = [userDefalts boolForKey:@"23"];
    

    if(kamiflag1 == YES){
        image1.image = [UIImage imageNamed:imagePath[0]];
    }
    if(kamiflag2 == YES){
        image2.image = [UIImage imageNamed:imagePath[1]];
    }
    if(kamiflag3 == YES){
        image3.image = [UIImage imageNamed:imagePath[2]];
    }
    if(kamiflag4 == YES){
        image4.image = [UIImage imageNamed:imagePath[3]];
    }
    if(kamiflag5 == YES){
        image5.image = [UIImage imageNamed:imagePath[4]];
    }
    if(kamiflag6 == YES){
        image6.image = [UIImage imageNamed:imagePath[5]];
    }
    if(kamiflag7 == YES){
        image7.image = [UIImage imageNamed:imagePath[6]];
    }
    if(kamiflag8 == YES){
        image8.image = [UIImage imageNamed:imagePath[7]];
    }
    if(kamiflag9 == YES){
        image9.image = [UIImage imageNamed:imagePath[8]];
    }
    if(kamiflag10 == YES){
        image10.image = [UIImage imageNamed:imagePath[9]];
    }
    if(kamiflag11 == YES){
        image11.image = [UIImage imageNamed:imagePath[10]];
    }
    if(kamiflag12 == YES){
        image12.image = [UIImage imageNamed:imagePath[11]];
    }
    if(kamiflag13 == YES){
        image13.image = [UIImage imageNamed:imagePath[12]];
    }
    if(kamiflag14 == YES){
        image14.image = [UIImage imageNamed:imagePath[13]];
    }
    if(kamiflag15 == YES){
        image15.image = [UIImage imageNamed:imagePath[14]];
    }
    if(kamiflag16 == YES){
        image16.image = [UIImage imageNamed:imagePath[15]];
    }
    if(kamiflag17 == YES){
        image17.image = [UIImage imageNamed:imagePath[16]];
    }
    if(kamiflag18 == YES){
        image18.image = [UIImage imageNamed:imagePath[17]];
    }
    if(kamiflag19 == YES){
        image19.image = [UIImage imageNamed:imagePath[18]];
    }
    if(kamiflag20 == YES){
        image20.image = [UIImage imageNamed:imagePath[19]];
    }
    if(kamiflag21 == YES){
        image21.image = [UIImage imageNamed:imagePath[20]];
    }
    if(kamiflag22 == YES){
        image22.image = [UIImage imageNamed:imagePath[21]];
    }
    if(kamiflag23 == YES){
        image23.image = [UIImage imageNamed:imagePath[22]];
    }
    if(kamiflag24 == YES){
        image24.image = [UIImage imageNamed:imagePath[23]];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
