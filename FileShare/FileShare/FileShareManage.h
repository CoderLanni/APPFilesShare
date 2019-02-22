//
//  FileShareManage.h
//  FileShare
//
//  Created by 小毅 on 2018/11/5.
//  Copyright © 2018年 小毅的Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileShareManage : NSObject

+ (instancetype)sharedInstance;

- (NSArray *)getAllFile;

@end
