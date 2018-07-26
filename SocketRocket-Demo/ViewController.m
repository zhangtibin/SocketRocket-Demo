//
//  ViewController.m
//  SocketRocket-Demo
//
//  Created by 张体宾 on 2018/7/24.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ViewController.h"

#import "SocketRocketHandler.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *showTxt;
@property (weak, nonatomic) IBOutlet UITextField *contentTF;
@property (nonatomic, strong) SocketRocketHandler *socketHandler;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor brownColor];
    _socketHandler = [SocketRocketHandler sharedSocketRocketHandler];
}

#pragma mark - 发送消息
- (IBAction)sendBtnDidClick:(id)sender {
    if (_contentTF.text == nil) {
        return;
    }
    [_socketHandler sendMsg:_contentTF.text];
}

#pragma mark - 建立连接
- (IBAction)connectBtnDidClick:(id)sender {
    [_socketHandler connect];
}

#pragma mark - 断开连接
- (IBAction)disConnectBtnDidClick:(id)sender {
    [_socketHandler disConnect];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
