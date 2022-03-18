//
//  ViewController.m
//  CFiAdBottomScrollViewSample
//
//  Created by Eric Chen on 2022/3/18.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *nsc = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [nsc setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 100)];
    [self.view addSubview:nsc];
    
    mfadbottomscrollview = [[MFAdBottomScrollView alloc] init];
    mfadbottomscrollview.bannerId = @"13148";
    mfadbottomscrollview.delegate = self;
    [mfadbottomscrollview debugInfo:YES];
    [mfadbottomscrollview setScrollview:nsc];
    [mfadbottomscrollview requestAd];
    
    [self.view addSubview:mfadbottomscrollview];
}

- (void)onSuccessToMFAdBottomScrollView{
    [mfadbottomscrollview show];
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onFailToMFAdBottomScrollView{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onClickToMFAdBottomScrollView{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onCloseToMFAdBottomScrollView{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}


@end
