//
//  ViewController.m
//  StatusBarNotificationDemo
//
//  Created by 周少文 on 15/10/31.
//  Copyright © 2015年 ZheJiangWangHang. All rights reserved.
//

#import "ViewController.h"
#import "WHCustomStatusBar.h"

@interface ViewController ()

@property (nonatomic,strong) WHCustomStatusBar *customStatus;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)show:(id)sender {
    
    [self.customStatus setBackgroundColor:[UIColor greenColor]];
    [self.customStatus setTextColor:[UIColor whiteColor]];
    [self.customStatus setTextAlignment:NSTextAlignmentCenter];
    [self.customStatus showStatusWithMessage:@"分享成功"];

}

- (WHCustomStatusBar *)customStatus
{
    if(_customStatus ==nil)
    {
        _customStatus = [[WHCustomStatusBar alloc] init];
    }
    
    return _customStatus;
}





@end
