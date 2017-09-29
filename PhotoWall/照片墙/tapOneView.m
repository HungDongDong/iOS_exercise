//
//  tapOneView.m
//  照片墙
//
//  Created by 黄尧栋 on 2017/5/24.
//  Copyright © 2017年 Open Source. All rights reserved.
//

#import "tapOneView.h"

@interface tapOneView ()

@end

@implementation tapOneView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    _imgView=[[UIImageView alloc]init];
    _imgView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_tagView-100]];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _imgView.frame=CGRectMake(0, 0, 375, 812);
    [UIView commitAnimations];
    [self.view addSubview:_imgView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
