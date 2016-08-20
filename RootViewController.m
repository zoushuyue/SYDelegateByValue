//
//  RootViewController.m
//  SYDelegateByValue
//
//  Created by mac1 on 16/8/4.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import "RootViewController.h"
#import "ModalViewController.h"

@implementation RootViewController
- (void)viewDidLoad {
        [super viewDidLoad];
        
        //1) 设置背景颜色
        self.view.backgroundColor = [UIColor cyanColor];
        
        //2) 设置一个Label
        //a) 创建一个Label
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(25, 100, 270, 30)];
        //b) 设置该label的tag
        label.tag = 1000;
        //c) 设置label的内容
        label.text = @"在这里显示文字";
        //d) 设置背景颜色
        label.backgroundColor = [UIColor orangeColor];
        //e) 设置字体颜色
        label.textColor = [UIColor whiteColor];
        //f) 设置居中方式
        label.textAlignment = NSTextAlignmentCenter;
        //g) 添加label
        [self.view addSubview:label];
        
        //3) 设置跳转你的button
        //a) 创建button
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        //b) 设置其frame
        button.frame = CGRectMake(0, 0, 200, 30);
        //c) 设置其在屏幕的中心
        button.center = self.view.center;
        //d) 设置背景颜色
        button.backgroundColor = [UIColor lightGrayColor];
        //e) 设置显示的内容
        [button setTitle:@"跳转" forState:UIControlStateNormal];
        //f) 设置相应事件
        [button addTarget:self
                   action:@selector(buttonAction:)
         forControlEvents:UIControlEventTouchUpInside];
        //g) 添加到页面上
        [self.view addSubview:button];
        
    }
    
    - (void) buttonAction: (UIButton *) button {
        
        //1) 创建一个模态视图
        ModalViewController *modalViewController = [[ModalViewController alloc] init];
        
        //2. 设置弹窗模式
        modalViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        //3. 设置代理对象
        modalViewController.delegate = self;
        
        //4. 模态视图
        [self presentViewController:modalViewController animated:YES completion:nil];
        
    }
    
#pragma mark - 代理方法：值传递
    - (void) changeTextLabelValue: (NSString *) text {
        
        //1) 获取Label
        UILabel *label = (UILabel *)[self.view viewWithTag:1000];
        
        //2) 传值
        label.text = text;
        
    }
    

@end
