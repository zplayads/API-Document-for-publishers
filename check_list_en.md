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
a. 允许WebView执行Javascript代码
```
mWebView.getSettings().setJavaScriptEnabled(true);
```
b. 添加Javascript接口
```
mWebView.addJavascriptInterface(new ZPLAYAdsJavascriptInterface(), "ZPLAYAds");
```
类ZPLAYAdsJavascriptInterface.java实现如下
```
private class ZPLAYAdsJavascriptInterface {

        @JavascriptInterface
        public void onCloseSelected() {
            // 可玩广告点击关闭按钮时，触发该方法
        }

        @JavascriptInterface
        public void onInstallSelected() {
            // 当点击"安装"按钮时，触发该方法
        }
    }
```
c. ZPLAY Ads关闭事件会调用```ZPLAYAdsJavascriptInterface.onCloseSelected()```方法，请在此回调中处理关闭事务。

#### 3.2 iOS监听WKWebView的关闭事件

a.WKWebView添加```zplayads```脚本消息处理程序

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

b.监听```WKScriptMessageHandler```的代理方法

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

Please listen to ZPLAY Ads click event `user_did_tap_install`, after listening to this event, open build-in APP Store or jump to Google Play.

#### 4.1 Android响应WebView的install事件示例
参考 **Android响应WebView的close事件示例** ，点击事件会回调```ZPLAYAdsJavascriptInterface.onInstallSelected()```方法，请在此方法中处理打开应用市场事务。

#### 4.2 iOS监听WKWebView的安装事件

参考 **iOS监听WKWebView的关闭事件**，点击事件会返回```user_did_tap_install```，在```handlePlayablePageMessage:```处理您的跳转逻辑。

打开内置AppStore代码示例：[点击此处](AppStore)