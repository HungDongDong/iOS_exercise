//
//  ViewController.m
//  照片墙
//
//  Created by 黄尧栋 on 2017/5/21.
//  Copyright © 2017年 Open Source. All rights reserved.
//

#import "ViewController.h"
#import "tapOneView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    //导航栏标题控件
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    label.text=@"Wallpaper";
    label.font=[UIFont boldSystemFontOfSize:17.0];
    //label.backgroundColor=[UIColor blackColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.textColor=[UIColor blueColor];
    self.navigationItem.titleView=label;
    
    self.view.backgroundColor=[UIColor whiteColor];
    UIScrollView *scView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 375,812 )];
    scView.contentSize=CGSizeMake(414, 812*1.68);
    scView.pagingEnabled=YES;
    scView.scrollEnabled=YES;
    scView.userInteractionEnabled=YES;
    for (int i=0; i<5; i++)
    {
        for (int j=0; j<3; j++) {
            NSString *str=[NSString stringWithFormat:@"%d.jpg",i * 3 +j + 1];
            UIImage *img=[UIImage imageNamed:str];
            UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(0 +125 * j, 0+270 *i, 125, 270)];
            imgView.image=img;
            imgView.tag= 100 + i *3 +j +1;
            imgView.userInteractionEnabled=YES;
            [scView addSubview:imgView];
            UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOne:)];
            tap.numberOfTapsRequired=1;
            tap.numberOfTapsRequired=1;
            
            [imgView addGestureRecognizer:tap];
        }
    }
    [self.view addSubview:scView];
     
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)tapOne:(UITapGestureRecognizer *)tap
{
    UIImageView *imgView=(UIImageView *)tap.view;
    tapOneView *tapOne=[[tapOneView alloc]init];
    tapOne.tagView=imgView.tag;
    [self.navigationController pushViewController:tapOne animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
