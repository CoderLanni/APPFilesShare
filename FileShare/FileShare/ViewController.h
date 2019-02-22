//
//  ViewController.h
//  FileShare
//
//  Created by 小毅 on 2018/11/5.
//  Copyright © 2018年 小毅的Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FileShareManage.h"
#import "FileShareModel.h"

typedef void(^returnModelBlock)(FileShareModel *model);

@interface ViewController : UIViewController

- (instancetype)initWithBlock:(returnModelBlock)block;

@end

