//
//  FileShareManage.m
//  FileShare
//
//  Created by 小毅 on 2018/11/5.
//  Copyright © 2018年 小毅的Mac. All rights reserved.
//

#define HSFolderName @"Inbox"

#import "FileShareManage.h"
#import "FileShareModel.h"

@implementation FileShareManage

static FileShareManage *_shareManager;

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareManager = [[self alloc] init];
    });

    return _shareManager;
}

- (NSArray *)getAllFile
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:HSFolderName];
//     NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] ;
    NSArray *files = [fileManager contentsOfDirectoryAtPath:path error:nil];
    NSMutableArray *dataSource = [NSMutableArray array];

    if (files.count < 1) {
        return dataSource;
    }

    for (NSString *fileString in files) {
        FileShareModel *model = [[FileShareModel alloc] init];
        //指定类型文件
//        if ([fileString rangeOfString:@".bin"].location !=NSNotFound) {
//            model.fileUrl =  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@",HSFolderName,fileString]];
//            model.fileName = fileString;
//            [dataSource addObject:model];
//        }
        
       //全类型文件
            model.fileUrl =  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@",HSFolderName,fileString]];
            model.fileName = fileString;
            [dataSource addObject:model];
        
        
    }
    return dataSource;
}

@end
