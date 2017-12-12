//
//  WXRegexUtil.h
//  WXCatogery
//
//  Created by Zhou on 2017/12/12.
//  Copyright © 2017年 DPX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WXRegexUtil : NSObject

#pragma mark --- 常用密码校验

//字母、数字、特殊字符最少2种组合（不能有中文和空格)
+ (BOOL) checkNomalPasswordWithString:(NSString*)password;

//中文、字母、数字、特殊字符最少2种组合（不能有空格）
+ (BOOL) checkUnicodePasswordWithString:(NSString *)password;

#pragma mark --- 常用号码校验

//身份证号
+ (BOOL) checkIDString:(NSString*)identifier;

//QQ号
+ (BOOL) checkQQString:(NSString*)qq;

//微信号
+ (BOOL) checkWXString:(NSString*)wx;

//手机号
+ (BOOL) checkMobileString:(NSString*)mobile;


@end
