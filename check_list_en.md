# Check List

- [Check List](#check-list)
  - [1. Client UA and IP Address Reporting](#1-client-ua-and-ip-address-reporting)
  - [2. Parameter Verify](#2-parameter-verify)
  - [3. Support both click event and install event which we provide](#3-support-both-click-event-and-install-event-which-we-provide)
    - [3.1 Android](#31-android)
    - [3.2 iOS](#32-ios)
      - [3.2.1 If you use WKWebview](#321-if-you-use-wkwebview)
      - [3.2.2 If you use UIWebview](#322-if-you-use-uiwebview)
  - [4. request when the unit_type is native](#4-request-when-the-unittype-is-native)

> Please read all the items listed here and check if they have met the requirements. Otherwise, the traffic will be blocked, and fill rate is not high, and revenue would be low. Please check carefully.

## 1. Client UA and IP Address Reporting

**Please make sure `Client UA` 和 `Client IP address` will send through `http header` when you send a request to ZPLAY Ads**

> If the client UA or IP is not passed through the header, the server's IP will be taken as the client address, and ZPLAY Ads platform will block the excessive IP as the cheating traffic.

## 2. Parameter Verify

- If the request from iOS device, please be sure to pass the device's `IDFA`, otherwise there will be no ad fill

- If the request from Android device, please be sure to pass at least one of parameter in `IMEI` `AdvertisingID` `AndroidID` `MAC`, otherwise no ad fill

- Please make sure the app_id, app_name, app_cat, ad_unit_id, unit_type in request are same with the corresponding values that you have registered on [ZPLAY Ads Platform](https://wwww.zplayads.com) in advance.

## 3. Support both click event and install event which we provide

### 3.1 Android

>Using WebView to Load ZPLAY Ads HTML on Android device

a. allow WebView to execute Javascript

```java
mWebView.getSettings().setJavaScriptEnabled(true);
```

b. sets the WebView need not requires a user gesture to play media

```java
mWebView.setMediaPlaybackRequiresUserGesture(false);
```

c. adding Javascript interface

```java
mWebView.addJavascriptInterface(new ZPLAYAdsJavascriptInterface(), "ZPLAYAds");
```

class ZPLAYAdsJavascriptInterface.java code as following:

```java
private class ZPLAYAdsJavascriptInterface {

        @JavascriptInterface
        public void onCloseSelected() {
            // This method will be called when user close the playable ad, you can handle ad close event in this method
        }

        @JavascriptInterface
        public void onInstallSelected() {
            // This method will be called when user click "download" button, you can handle app install event in this method
        }
    }
```

d. respond install event of WebView

- `ZPLAYAdsJavascriptInterface.onInstallSelected()` method will be invoked when ad is clicked, please jump to App Store in this method.

e. respond close event of WebView

- `ZPLAYAdsJavascriptInterface.onCloseSelected()` method will be invoked when ad is closed，please close the WebView in this method.

### 3.2 iOS

> Using WKWebView or UIWebview to Load ZPLAY Ads HTML on iOS device

#### 3.2.1 If you use WKWebview

a. Add `zplayads` script message handle in WKWebView

```objective-c
- (WKWebView *)previewAdWebView {
    if (!_previewAdWebView) {
        WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
        [config.userContentController addScriptMessageHandler:self name:@"zplayads"];
        config.allowsInlineMediaPlayback = YES;
        CGRect frame =
            CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        _previewAdWebView = [[WKWebView alloc] initWithFrame:frame configuration:config];
        _previewAdWebView.scrollView.bounces = NO;
        _previewAdWebView.navigationDelegate = self;
        _previewAdWebView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

        if (@available(iOS 11.0, *)) {
            [_previewAdWebView.scrollView setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
        }
    }
    return _previewAdWebView;
}
```

b. Listening to `WKScriptMessageHandler` delegate method

```objective-c
#pragma mark - WKScriptMessageHandler
- (void)userContentController:(WKUserContentController *)userContentController
      didReceiveScriptMessage:(WKScriptMessage *)message {
    if ([message.name isEqualToString:@"zplayads"]) {
        [self handlePlayablePageMessage:message.body];
    }
}
// handle message
- (void)handlePlayablePageMessage:(NSString *)msg {
   if ([msg isEqualToString:@"user_did_tap_install"]) {
        NSLog(@"user_did_tap_install");
    }else if ([msg isEqualToString:@"close_playable_ads"]) {
        NSLog(@"close zplayads...");
    }
}
```

c. Listen to Click Event and Open Application Market

- `user_did_tap_install` method will be invoked when ad is clicked, please open built-in App Store in `handlePlayablePageMessage:`.

- [CLICK HERE](AppStore) to see code sample how to open built-in AppStore.

d. listen to Close Event and execute

- `close_playable_ads` method will be invoked when ad is closed, please close the WKWebView in `handlePlayablePageMessage:`

#### 3.2.2 If you use UIWebview

a. Initialize UIWebView

```objective-c
- (UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc] init];
        _webView.mediaPlaybackRequiresUserAction = NO;
        _webView.allowsInlineMediaPlayback = YES;
        _webView.delegate = self;
        _webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _webView.backgroundColor = [UIColor blackColor];
    }
    return _webView;
}
```

b. Listening to `UIWebView` delegate method

```objective-c
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{

    NSString *rUrl = [[request URL] absoluteString];
    if ([rUrl hasPrefix:@"zplayads:"]) {
        NSArray *v = [rUrl componentsSeparatedByString:@":"];
        if (v.count > 1) {
            [self handleCustomAction:v[1]];
        }
        return NO;
    }
    return YES;
}
// handle message
- (void)handleCustomAction:(NSString *)msg{
    if ([msg isEqualToString:@"user_did_tap_install"]) {
        NSLog(@"user_did_tap_install");
    } else if ([msg isEqualToString:@"close_playable_ads"]) {
        NSLog(@"close_playable_ads");
    }
}
```

c. Listen to Click Event and Open Application Market

- `user_did_tap_install` method will be invoked when ad is clicked, please open built-in App Store in `handleCustomAction:`.

- [CLICK HERE](AppStore) to see code sample how to open built-in AppStore.

d. listen to Close Event and execute

- `close_playable_ads` method will be invoked when ad is closed, please close the WKWebView in `handleCustomAction:`

> **Please confirm that whether you support install click event and close event. If you support these two events, please set `support_function` to 2 when you request, otherwise set 1.**

**What's the difference for your work when you support these 2 events or not?**

- If you support these 2 events, you need not to add close button on HTML of ZPLAY Ads, besides you will get higher eCPM because you support our install event so that we can open the store within your app.
- If you not support these 2 events, you need add close button on HTML of ZPLAY Ads and you may get lower eCPM than you support our events. This is because opening the store in outside of your app is a bad user experience.

## 4. request when the unit_type is native

Please make sure that "play game without downloading" which is a image object that its type is 4 button is included in request.
