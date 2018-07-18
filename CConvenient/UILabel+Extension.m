//
//  UILabel+Extension.m
//  CConvenientExample
//
//  Created by mac on 2018/7/18.
//  Copyright © 2018年 mac. All rights reserved.
//


#import "UILabel+Extension.h"

@implementation UILabel (Extension)


+(instancetype)labelText:(NSString *)text font:(UIFont *)font color:(UIColor *)color textAlign:(TextAlign)align{
    
    UILabel *label = [[self alloc]init];
    label.text = text ? text : @"";
    label.font = font ? font : [UIFont systemFontOfSize:14.0];
    label.textColor = color ? color : [UIColor blackColor];
    switch (align) {
        case kLTextLeft:
            label.textAlignment = NSTextAlignmentLeft;
            break;
        case kLTextRight:
            label.textAlignment = NSTextAlignmentRight;
            break;
        case kLTextCenter:
            label.textAlignment = NSTextAlignmentCenter;
            break;
        default:
            label.textAlignment = NSTextAlignmentLeft;
            break;
    }
    
    return label;
}

+(instancetype)labelText:(NSString *)text fontSize:(CGFloat)size color:(UIColor *)color textAlign:(TextAlign)align{
    
    return [self labelText:text font:[UIFont systemFontOfSize:size] color:color textAlign:align];
}


+ (void)changeLineSpace:(float)space forLabel:(UILabel *)label{
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

+ (void)changeWordSpace:(float)space forLabel:(UILabel *)label{
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

+ (void)changeLineSpace:(float)lineSpace WordSpace:(float)wordSpace forLabel:(UILabel *)label{
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(wordSpace)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    
    
    label.attributedText = attributedString;
    
    [label sizeToFit];
    
}
-(void)changeLineSpace:(float)space{
    [UILabel changeLineSpace:space forLabel:self];
}
-(void)changeWordSpace:(float)space{
    [UILabel changeWordSpace:space forLabel:self];
}
-(void)changeLineSpace:(float)lineSpace WordSpace:(float)wordSpace{
    [UILabel changeLineSpace:lineSpace WordSpace:wordSpace forLabel:self];
}


@end
