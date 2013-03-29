//
//  NSObject+SinaDateToChinaDate.m
//  KeBoHui
//
//  Created by apple  on 13-3-21.
//  Copyright (c) 2013年 David. All rights reserved.
//

#import "NSObject+SinaDateToChinaDate.h"

@implementation NSObject (SinaDateToChinaDate)

- (NSString *)SinaDateToChinaDate:(NSString *)SinaDate
{
    
    //分割时间
    NSArray *dateArr = [[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:3] componentsSeparatedByString:@":"];
    //时分
    NSString *date = [NSString stringWithFormat:@"%@:%@",[dateArr objectAtIndex:0],[dateArr objectAtIndex:1]];    
    if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Jan"]) {
        NSString *month = @"01";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Feb"]) {
        NSString *month = @"02";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Mar"]) {
        NSString *month = @"03";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Apr"]) {
        NSString *month = @"04";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"May"]) {
        NSString *month = @"05";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Jun"]) {
        NSString *month = @"06";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Jul"]) {
        NSString *month = @"07";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Aug"]) {
        NSString *month = @"08";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Sept"]) {
        NSString *month = @"09";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Oct"]) {
        NSString *month = @"10";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Nov"]) {
        NSString *month = @"11";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }if ([[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:1] isEqualToString:@"Dec"]) {
        NSString *month = @"12";
        NSString *ChinaDate = [NSString stringWithFormat:@"%@.%@.%@  %@",[[SinaDate componentsSeparatedByString:@" "] objectAtIndex:5],month,[[SinaDate componentsSeparatedByString:@" "]objectAtIndex:2],date];
        return ChinaDate;
    }
    else
        return nil;
}

- (NSString *) platformString
{
    // Gets a string with the device model  6
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone 2G";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone 4 (CDMA)";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch (1 Gen)";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod Touch (2 Gen)";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod Touch (3 Gen)";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod Touch (4 Gen)";
    if ([platform isEqualToString:@"iPod5,1"])      return @"iPod Touch (5 Gen)";
    
    if ([platform isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([platform isEqualToString:@"iPad1,2"])      return @"iPad 3G";
    if ([platform isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
    if ([platform isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
    if ([platform isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
    if ([platform isEqualToString:@"iPad2,6"])      return @"iPad Mini";
    if ([platform isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
    if ([platform isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
    if ([platform isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
    if ([platform isEqualToString:@"iPad3,3"])      return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
    if ([platform isEqualToString:@"iPad3,5"])      return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
    
    if ([platform isEqualToString:@"i386"])         return @"Simulator";
    if ([platform isEqualToString:@"x86_64"])       return @"Simulator";
    return platform;
}





@end
