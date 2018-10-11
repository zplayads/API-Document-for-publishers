# 对接后检查清单

> 此处列出的所有对接项请自行阅读，并检查是否都已经符合要求，否则广告在投放过程中，将会出现流量被屏蔽，填充不高，收益较低等问题，请仔细核查检验

## 1. 客户端UA和IP地址上报

** 请确认 `客户端UA` 和 `客户端IP地址` 通过 `http header头` 在请求 ZPLAY Ads平台 的时候传递 **

> 客户端UA、IP 如果不通过header传过来，将会取服务端的IP做为客户端地址, ZPLAY Ads平台 会将重复过多的IP当做作弊流量被屏蔽掉

## 2. 传递参数校验

* iOS请求中，请务必将设备的`IDFA`传递，否则无广告填充
* Android请求中，请务必传递`IMEI` `AdvertisingID` `AndroidID` `MAC`中任意一个参数，否则无广告填充

## 3. 关闭事件监听并关闭webview

* 请监听 ZPLAY Ads 的关闭事件 `close_playable_ads`，在监听到该事件后，关闭 Webview，返回游戏或者应用

## 4. 点击事件监听并打开应用市场

* 请监听 ZPLAY Ads 的点击事件 `user_did_tap_install`，在监听到该事件后，在应用内打开 APP Store 或者 Google Play，并打开跳转链接。
