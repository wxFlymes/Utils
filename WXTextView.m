//
//  WXTextView.m
//  WXCatogery
//
//  Created by Zhou on 2017/12/5.
//  Copyright © 2017年 DPX. All rights reserved.
//

#import "WXTextView.h"

@interface WXTextView ()

@property(nonatomic, strong) UILabel* wxPlaceHolderLabel;

@end



@implementation WXTextView

@synthesize wxTextFont = _wxTextFont,wxTextColor=_wxTextColor,wxPlaceHolder=_wxPlaceHolder,
            wxPlaceHolderColor=_wxPlaceHolderColor;

-(instancetype)init
{
    return [self initWithFrame:CGRectZero];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.wxPlaceHolderLabel = [[UILabel alloc] init];
        [self addSubview:self.wxPlaceHolderLabel];
        [self setValue:self.wxPlaceHolderLabel forKey:@"_placeholderLabel"];
    }
    return self;
}


#pragma mark --- set override
-(void)setWxTextFont:(UIFont *)wxTextFont{
    _wxTextFont = nil;
    _wxTextFont = wxTextFont;
    self.font = wxTextFont;
    self.wxPlaceHolderLabel.font = wxTextFont;
}

-(void)setWxTextColor:(UIColor *)wxTextColor{
    _wxTextColor = nil;
    _wxTextColor = wxTextColor;
    self.textColor = wxTextColor;
}

-(void)setWxPlaceHolderColor:(UIColor *)wxPlaceHolderColor{
    _wxPlaceHolderColor = nil;
    _wxPlaceHolderColor = wxPlaceHolderColor;
    self.wxPlaceHolderLabel.textColor = wxPlaceHolderColor;
}

-(void)setWxPlaceHolder:(NSString *)wxPlaceHolder{
    _wxPlaceHolder = nil;
    _wxPlaceHolder = wxPlaceHolder;
    self.wxPlaceHolderLabel.text = wxPlaceHolder;
    [self.wxPlaceHolderLabel sizeToFit];
    self.wxPlaceHolderLabel.textAlignment = NSTextAlignmentLeft;
}

@end
