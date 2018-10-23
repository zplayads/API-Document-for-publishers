//
//  ZplayAppStore.m
//  Expecta
//
//  Created by d on 19/10/2017.
//

#import "ZplayAppStore.h"
#import <StoreKit/StoreKit.h>

#define SYSTEM_VERSION_LESS_THAN(v)                                                                                    \
([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)

@interface ZplayAppStore () <SKStoreProductViewControllerDelegate>

@property (nonatomic) NSNumber *itunesID;
@property (nonatomic) NSString *iTunesLink;
@property (nonatomic, assign) BOOL appStoreLoaded;

@property (nonatomic) SKStoreProductViewController *appStore;
@property (nonatomic, assign) BOOL isPresented;

@end

@implementation ZplayAppStore

- (instancetype)initWithItunesID:(NSNumber *)itunesID itunesLink:(NSString *)linkUrl {
    self = [super init];

    self.itunesID = itunesID;
    self.iTunesLink = linkUrl;

    [self preloadBelowIOS11];
    return self;
}

- (void)present {
    if (self.appStoreLoaded) {
        if (self.isPresented) {
            return;
        }
        if ([self topMostViewController].presentedViewController) {
            
            return;
        }
        self.isPresented = YES;
        [[self topMostViewController] presentViewController:self.appStore
                                                      animated:YES
                                                    completion:^{
                                                        [self.appStoreDelegate appStoreDidAppear];
                                                    }];
    } else {
        [self openAppStore:self.iTunesLink];
    }
}

- (UIViewController *)topMostViewController {
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}

- (void)preloadBelowIOS11 {
    //Using the built-in AppStore pre-caching feature will appear white screen on iOS11.0 ~ 11.2.x system, please open the App Store link.
    // If iTunesLink is nil, return
    NSString *osVersion = [UIDevice currentDevice].systemVersion;
    if (!self.itunesID || [osVersion hasPrefix:@"11.0"] || [osVersion hasPrefix:@"11.1"] ||
        [osVersion hasPrefix:@"11.2"]) {
        return;
    }

    self.appStore = [[SKStoreProductViewController alloc] init];
    self.appStore.delegate = self;
    NSDictionary *parameters = @{SKStoreProductParameterITunesItemIdentifier : self.itunesID};
    __weak typeof(self) weakSelf = self;
    self.appStoreLoaded = NO;
    [self.appStore
        loadProductWithParameters:parameters
                  completionBlock:^(BOOL result, NSError *_Nullable error) {
                      if (error) {
                          NSLog(@"--%@",error);
                          return;
                      }
                     
                      weakSelf.appStoreLoaded = result;
                  }];
}

- (void)openAppStore:(NSString *)iTunesLink {
    // If iTunesLink is nil, return
    if (iTunesLink.length == 0) {
        return;
    }
    if (SYSTEM_VERSION_LESS_THAN(@"10.0")) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink]];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink] options:@{} completionHandler:nil];
    }
}

#pragma mark - SKStoreProductViewControllerDelegate
- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController {
    self.isPresented = NO;
    [viewController dismissViewControllerAnimated:NO
                                       completion:^{
                                           [self.appStoreDelegate appStoreDidDisappear];
                                       }];
    //If OS version is 11.3 and above, still open built-in App Store after first time opening.
    //If OS version below 11.0, it will jump to App Store after first time opening.
    if (SYSTEM_VERSION_LESS_THAN(@"11.0")) {
        self.appStoreLoaded = NO;
    }
}

@end
