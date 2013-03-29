//
//  NSObject+SinaDateToChinaDate.h
//  KeBoHui
//
//  Created by apple  on 13-3-21.
//  Copyright (c) 2013年 David. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SinaDateToChinaDate)

//把新浪微博格陵兰制时间转成: Y:M:D H:M 形式
- (NSString *)SinaDateToChinaDate:(NSString *)SinaDate;
//判断设备类型
- (NSString *) platformString;

@end
