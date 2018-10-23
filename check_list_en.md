# Check List
> Please read all the docking items listed here and check if they have met the requirements. Otherwise, the traffic will be blocked, the filling is not high, and the profit is low. Please check the inspection carefully.

## 1. Client UA and IP Address Reporting
**Please make sure `Client UA` 和 `Client IP address` will send according to `http header` when you request ZPLAY Ads**

> If the client UA or IP is not passed through the header, the server's IP will be taken as the client address, and the ZPLAY Ads platform will block the excessive IP as the cheating traffic.

## 2. Parameter Verify

* In the iOS request, please be sure to pass the device's `IDFA`, otherwise there will be no ad fill

* In the Android request, please be sure to pass any parameter in `IMEI` `AdvertisingID` `AndroidID` `MAC`, otherwise no ad fill

## 3. Listen to Close Event and Close Webview

Please listen to ZPLAY Ads closing event `close_playable_ads`, after listening to this event, close Webview, return to app or game.


#### 3.1 Code Sample for Android
a. Makesure Javascript is enabled in a WebView.
```
mWebView.getSettings().setJavaScriptEnabled(true);
```
b. Add Javascript interface
```
mWebView.addJavascriptInterface(new ZPLAYAdsJavascriptInterface(), "ZPLAYAds");
```
The class ZPLAYAdsJavascriptInterface.java implemented as follows,
```
private class ZPLAYAdsJavascriptInterface {

        @JavascriptInterface
        public void onCloseSelected() {
            // This method will be called when user close the playable ad, you can handle ad close event in this method
        }

        @JavascriptInterface
        public void onInstallSelected() {
            // This method will be called when user click "download" button, you can handle app download event in this method
        }
    }
```

#### 3.2 Code Sample for iOS

a. Add ```zplayads``` script message handle in WKWebView

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

b. Listening to ```WKScriptMessageHandler``` delegate method

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


## 4. Listen to Click Event and Open Application Market

Please listen to ZPLAY Ads click event `user_did_tap_install`, after listening to this event, open built-in APP Store or jump to Google Play.

#### 4.1 Code Sample for Android
Refer to **Code Sample for Android in 3.1**, ```ZPLAYAdsJavascriptInterface.onInstallSelected()``` method will be called when ad is clicked, please jump to Goole Play in this method.

#### 4.2 Code Sample for iOS

Refer to **Code Sample for iOS in 3.2**, ```user_did_tap_install``` method will be called when ad is clicked, please open built-in App Store in ```handlePlayablePageMessage:()```.

[CLICK HERE](AppStore) to see code sample of open built-in AppStore.