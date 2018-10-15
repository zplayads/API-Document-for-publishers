# Check List

> Please read all the docking items listed here and check if they have met the requirements. Otherwise, the traffic will be blocked, the filling is not high, and the profit is low. Please check the inspection carefully.

## 1. Client UA and IP Address Reporting

**Please make sure `Client UA` 和 `Client IP address` will send according to `http header` when you request ZPLAY Ads**

> If the client UA or IP is not passed through the header, the server's IP will be taken as the client address, and the ZPLAY Ads platform will block the excessive IP as the cheating traffic.

## 2. Parameter Verify

* In the iOS request, please be sure to pass the device's `IDFA`, otherwise there will be no ad fill
* In the Android request, please be sure to pass any parameter in `IMEI` `AdvertisingID` `AndroidID` `MAC`, otherwise no ad fill

## 3. Listen to Close Event and Close Webview

* Please listen to ZPLAY Ads closing event `close_playable_ads`, after listening to this event, close Webview, return to app or game.

## 4. Listen to Click Event and Open Application Market

* Please listen to ZPLAY Ads click event  `user_did_tap_install`, after listening to this event, open build-in APP Store or jump to Google Play.
