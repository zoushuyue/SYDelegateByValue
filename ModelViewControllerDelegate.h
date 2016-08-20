//
//  ModelViewControllerDelegate.h
//  SYDelegateByValue
//
//  Created by mac1 on 16/8/4.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import <Foundation/Foundation.h>

//协议：主要实现的功能：传值
@protocol ModelViewControllerDelegate <NSObject>

- (void) changeTextLabelValue: (NSString *) text;



@end
