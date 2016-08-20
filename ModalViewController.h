//
//  ModalViewController.h
//  SYDelegateByValue
//
//  Created by mac1 on 16/8/4.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelViewControllerDelegate.h"

@interface ModalViewController : UIViewController

@property(nonatomic, weak) id <ModelViewControllerDelegate> delegate;


@end
