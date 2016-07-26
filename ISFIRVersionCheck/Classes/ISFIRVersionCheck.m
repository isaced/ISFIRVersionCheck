//
//  ISFIRVersionCheck.m
//  Pods
//
//  Created by isaced on 16/7/26.
//
//

#import <UIKit/UIKit.h>
#import "ISFIRVersionCheck.h"

@interface ISFIRVersionCheck()<UIAlertViewDelegate>

@property (nonatomic, copy) NSString *firAppID;
@property (nonatomic, copy) NSString *firAPIToken;
@property (nonatomic, copy) NSString *updateURL;

@end

@implementation ISFIRVersionCheck

+ (instancetype)sharedInstance
{
    static ISFIRVersionCheck *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ISFIRVersionCheck alloc] init];
    });
    return sharedInstance;
}

+ (void)setAppID:(NSString *)appID :(NSString *)APIToken{
    [[self sharedInstance] setFirAppID:appID];
    [[self sharedInstance] setFirAPIToken:APIToken];
}

+ (void)check{
    NSString *appid = [[self sharedInstance] firAppID];
    NSString *apiToken = [[self sharedInstance] firAPIToken];
    NSString *idUrlString = [NSString stringWithFormat:@"http://api.fir.im/apps/latest/%@?api_token=%@",appid,apiToken];
    NSURL *requestURL = [NSURL URLWithString:idUrlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:requestURL];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (connectionError) {
            NSLog(@"FIR - 新版本检测失败!");
        }else {
            NSError *jsonError = nil;
            id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            if (!jsonError && [object isKindOfClass:[NSDictionary class]]) {
                NSString *version = object[@"version"];
                NSString *build = object[@"build"];
                NSString *changelog = object[@"changelog"];
                NSString *update_url = object[@"update_url"];
                NSString *currentBuild = [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
                
                if ([build integerValue] > [currentBuild integerValue]) {
                    NSLog(@"FIR － 检测到新版本 v%@(%@) ",version,build);
                    NSLog(@"FIR － 更新内容: \n%@ ",changelog);
                    
                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"检测到新版本" message:changelog delegate:[self sharedInstance] cancelButtonTitle:@"暂不更新" otherButtonTitles:@"前去更新", nil];
                    [alertView show];
                }
            }
        }
    }];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1 && self.updateURL) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.updateURL]];
    }
}

@end
