//
//  WXTextView.h
//  WXCatogery
//
//  Created by Zhou on 2017/12/5.
//  Copyright © 2017年 DPX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WXTextView : UITextView

@property (nonatomic, strong) UIColor* wxTextColor;
@property (nonatomic, strong) UIFont* wxTextFont;

@property (nonatomic, strong) NSString* wxPlaceHolder;
@property (nonatomic, strong) UIColor* wxPlaceHolderColor;

@end
