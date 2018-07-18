//
//  UILabel+Extension.h
//  CConvenientExample
//
//  Created by mac on 2018/7/18.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger,TextAlign) {
    kLTextLeft,
    kLTextCenter,
    kLTextRight
};

@interface UILabel (Extension)

/**
 快速创建
 */
+(instancetype)labelText:(NSString *)text font:(UIFont *)font color:(UIColor *)color textAlign:(TextAlign)align;

+(instancetype)labelText:(NSString *)text fontSize:(CGFloat)size color:(UIColor *)color textAlign:(TextAlign)align;


/**
 改变行间距
 */
+ (void)changeLineSpace:(float)space forLabel:(UILabel *)label;
/**
 *  改变字间距
 */
+ (void)changeWordSpace:(float)space forLabel:(UILabel *)label;

/**
 *  改变行间距和字间距
 */
+ (void)changeLineSpace:(float)lineSpace WordSpace:(float)wordSpace forLabel:(UILabel *)label;

-(void)changeLineSpace:(float)space;
-(void)changeWordSpace:(float)space;
-(void)changeLineSpace:(float)lineSpace WordSpace:(float)wordSpace;



@end
