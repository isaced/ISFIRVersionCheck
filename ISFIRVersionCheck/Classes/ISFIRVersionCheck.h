//
//  ISFIRVersionCheck.h
//  Pods
//
//  Created by isaced on 16/7/26.
//
//

#import <Foundation/Foundation.h>

@interface ISFIRVersionCheck : NSObject

+ (void)setAppID:(NSString *)appID APIToken:(NSString *)APIToken;

/**
 *  根据当前项目 build 版本号检查新版本，有责自动弹出 UIAlertView 提醒
 */
+ (void)check;

@end
