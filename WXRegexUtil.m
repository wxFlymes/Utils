//
//  WXRegexUtil.m
//  WXCatogery
//
//  Created by Zhou on 2017/12/12.
//  Copyright © 2017年 DPX. All rights reserved.
//

#import "WXRegexUtil.h"

@implementation WXRegexUtil
#pragma mark --- 常用密码校验

//字母、数字、特殊字符最少2种组合（不能有中文和空格)
+(BOOL) checkNomalPasswordWithString:(NSString *)password
{
    NSString* regStr = @"(?!.*[\u4E00-\u9FA5\\s])(?!^[a-zA-Z]+$)(?!^[\\d]+$)(?!^[^a-zA-Z\\d]+$)^.{6,16}$";
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regStr];
    return [predicate evaluateWithObject:password];
}

//中文、字母、数字、特殊字符最少2种组合（不能有空格
+ (BOOL) checkUnicodePasswordWithString:(NSString *)password
{
    NSString* regStr = @"(?!.*\\s)(?!^[\u4E00-\u9FA5]+$)(?!^[a-zA-Z]+$)(?!^[\\d]+$)(?!^[^\u4E00-\u9FA5a-zA-Z\\d]+$)^.{6,16}$";
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regStr];
    return [predicate evaluateWithObject:password];
}

#pragma mark --- 常用号码校验

//身份证号
+ (BOOL) checkIDString:(NSString *)identifier
{
    NSString* regStr = @"^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$";
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regStr];
    return [predicate evaluateWithObject:identifier];
}

//QQ号
+ (BOOL) checkQQString:(NSString*)qq
{
    NSString *regStr = @"^[1-9][0-9]{5,12}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regStr];
    return [predicate evaluateWithObject:qq];
}

//微信号 6至20位，以字母开头，字母，数字，减号，下划线
+ (BOOL) checkWXString:(NSString*)wx
{
    NSString* regStr = @"^[a-zA-Z]([-_a-zA-Z0-9]{5,19})+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regStr];
    return [predicate evaluateWithObject:wx];
}

//手机号
+ (BOOL) checkMobileString:(NSString*)mobile
{
    NSString *regStr = @"^1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|7[0678])\\d{8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regStr];
    return [predicate evaluateWithObject:mobile];
}


@end
