# 广告请求和返回示例
<!-- TOC -->

- [广告请求和返回示例](#广告请求和返回示例)
    - [测试 token 和应用](#测试-token-和应用)
    - [代码示例](#代码示例)
        - [iOS](#ios)
            - [插屏](#插屏)
                - [请求示例](#请求示例)
                - [返回示例](#返回示例)
            - [原生](#原生)
                - [请求示例](#请求示例-1)
                - [返回示例](#返回示例-1)
            - [激励视频](#激励视频)
                - [请求示例](#请求示例-2)
                - [返回示例](#返回示例-2)
            - [视频物料请求](#视频物料请求)
                - [VAST协议请求示例](#vast协议请求示例)
                - [VAST协议返回示例](#vast协议返回示例)
                - [非VAST协议请求示例](#非vast协议请求示例)
                - [非VAST协议返回示例](#非vast协议返回示例)
        - [Android](#android)
            - [插屏](#插屏-1)
                - [请求示例](#请求示例-3)
                - [返回示例](#返回示例-3)
            - [原生](#原生-1)
                - [请求示例](#请求示例-4)
                - [返回示例](#返回示例-4)
            - [激励视频](#激励视频-1)
                - [请求示例](#请求示例-5)
                - [返回示例](#返回示例-5)
            - [视频物料请求](#视频物料请求-1)
                - [VAST协议请求示例](#vast协议请求示例-1)
                - [VAST协议返回示例](#vast协议返回示例-1)
                - [非VAST协议请求示例](#非vast协议请求示例-1)
                - [非VAST协议返回示例](#非vast协议返回示例-1)

<!-- /TOC -->

## 测试 token 和应用

> 在对接完成后你可以使用测试 token（D0C85086-DC66-433E-9304-49EAB171D008）及测试应用和广告位获取广告（如下），以测试是否接入成功。

| 操作系统 | 测试应用<br>（app_id）               | 测试广告位<br>（ad_unit_id）         | 广告位类型<br>（unit_type） |
| -------- | ------------------------------------ | ------------------------------------ | --------------------------- |
| iOS      | A650AB0D-7BFC-2A81-3066-D3170947C3DA | 0868EBC0-7768-40CA-4226-F9924221C8EB | 1: 插屏                     |
| iOS      | A650AB0D-7BFC-2A81-3066-D3170947C3DA | 25AED008-6B6F-BADB-F873-AE7CA61DFE98 | 3: 原生                     |
| iOS      | A650AB0D-7BFC-2A81-3066-D3170947C3DA | BAE5DAAC-04A2-2591-D5B0-38FA846E45E7 | 4: 激励视频                 |
| Android  | 5C5419C7-A2DE-88BC-A311-C3E7A646F6AF | 19393189-C4EB-3886-60B9-13B39407064E | 1: 插屏                     |
| Android  | 5C5419C7-A2DE-88BC-A311-C3E7A646F6AF | BB8452AD-06E7-140B-00DC-FD6CB6B40FAA | 3: 原生                     |
| Android  | 5C5419C7-A2DE-88BC-A311-C3E7A646F6AF | 3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC | 4: 激励视频                 |

## 代码示例

### iOS

#### 插屏

##### 请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "A650AB0D-7BFC-2A81-3066-D3170947C3DA",
    "app_name": "iOS-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "iPhone8,1",
    "manufacturer": "Apple",
    "brand": "apple",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "",
    "imei": "",
    "android_id": "",
    "android_adid": "",
    "oaid": "",
    "idfa": "ADC65FAE-2FF8-423F-B3C8-244C4F2099E7",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "iOS",
    "os_version": "11.3",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
      "unit_type": 1,
      "ad_unit_id": "0868EBC0-7768-40CA-4226-F9924221C8EB"
    }
  ]
}
```

##### 返回示例

```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "6E4ADB48-6674-B91F-AE85-12E8CD21A847",
            "ad_unit_id": "0868EBC0-7768-40CA-4226-F9924221C8EB",
            "app_bundle": "834878585",
            "target_url": "https://itunes.apple.com/app/id834878585?mt=8",
            "target_url_type": 6,
            "playable_ads_html": "<!DOCTYPE html><html>  <head>    <meta name=\"viewport\" content=\"user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1\">    <title>Atmosplayer</title>    <meta charset=\"utf-8\"/>    <meta name=\"ad.size\" content=\"width=320,height=480\">    <script>      window.gestures = [  [    {      \"id\": 1,      \"type\": \"tap\",      \"attack\": 4580,      \"loop\": true,      \"loopStart\": 4580,      \"target\": 5530,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"circle\",          \"x\": 0.40532544378698226,          \"y\": 0.40532544378698226,          \"radius\": 0.3        }      ],      \"mandatory\": true,      \"tapDirection\": 1,      \"tapCount\": 1    }  ],  [    {      \"id\": 2,      \"type\": \"tap\",      \"attack\": 7816,      \"loop\": true,      \"loopStart\": 7816,      \"target\": 8766,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.16337935568704798,          \"y\": 0.6272189349112426,          \"width\": 0.41571334648257724,          \"height\": 0.3319526627218935        }      ],      \"mandatory\": true,      \"tapDirection\": 1,      \"tapCount\": 1    }  ]];      window.showUserGuide = false;      window.userGuideUrl = 'undefined';      window.userGuidePosition = {};      window.installAttributes = {\"x\":0.252465483234714,\"y\":0.8550295857988166,\"width\":0.5};      window.showFloatingMenu = false;      window.videoOrientation = 0;      window.disableUserFeedback = true;      window.sdk = '{\"is_landscape\":false,\"video\":{\"url\":\"https://adcdn.zplayads.com/prod/747810d0-6749-11e9-9db3-2f65b24f683c/1556192233855.html\",\"video_start_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_ended_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_did_fail_loading_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_did_fail_loading&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"present_sdk_trackers\":[],\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3D0868EBC0-7768-40CA-4226-F9924221C8EB%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79dketfiljm682gitg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79dketfiljm682gitg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"show_install_button_countdown\":1,\"show_close_button_countdown\":5,\"force_close_button\":-1},\"landing_page\":{\"url\":\"https://pa-cloud.zplayads.com/alfred/static/2018/11/29/059B2C08-95AE-51B0-DA71-B6636D2BF9AC.html\",\"show_replay_button\":0,\"landing_page_presented_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"landing_page_dismissed_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"click_to_action\":{\"action\":\"\",\"url\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3D0868EBC0-7768-40CA-4226-F9924221C8EB%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79dketfiljm682gitg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79dketfiljm682gitg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"itunes_id\":834878585,\"target_url\":\"https://itunes.apple.com/app/id834878585?mt=8\",\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3D0868EBC0-7768-40CA-4226-F9924221C8EB%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79dketfiljm682gitg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79dketfiljm682gitg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"]}},\"interval\":{\"default\":30,\"no_content\":60},\"tracker\":{\"download_start\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"download_end\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"force_close\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"close_url\":\"\",\"behavior_trajectory\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79dketfiljm682gitg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=behavior_trajectory&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"}}';      window.detached_install_url = '';      window.hasEndCard = true;      window.campaignType = 'ZPLAY';      window.endCardSettings = {  \"endCardType\": \"atmos\",  \"customEndCardUrl\": null,  \"loopStart\": 0,  \"hasRestartButton\": true,  \"hasCustomRestartShape\": true,  \"restartShape\": {    \"type\": \"circle\",    \"x\": 0.07922419460881001,    \"y\": 0.047337278106508875,    \"radius\": 0.06324786324786325  },  \"restartTapDirection\": \"1\",  \"installTapDirection\": \"1\",  \"installShape\": {    \"type\": \"square\",    \"x\": 0.5052596975673899,    \"y\": 0.7218934911242603,    \"width\": 0.9048652202498356,    \"height\": 0.3  }};      window.useFixRotation = false;    </script>    <style>      body {        background: black;      }      #rotatedContainer, #loadingImage {        display: none;      }      #loadingImage {        width: 100%;        height: 100%;        position: absolute;        top: 0;        left: 0;        right: 0;        bottom: 0;        filter: blur(4px);        z-index: 1;        pointer-events: none;      }      #loader-blur {        filter: blur(1.5rem);      }      #loader {        width: 50px;        height: 50px;        border-radius: 100%;        position: fixed;        top: 50%;        left: 50%;        z-index: 99;      }      #loader:before, #loader:after {        content: \"\";        position: absolute;        top: -35px;        left: -35px;        width: 100%;        height: 100%;        border-radius: 100%;        border: 10px solid transparent;        border-top-color: #6f9dec;      }      #loader:before {        z-index: 100;        animation: spin 1s infinite;      }      #loader:after {        border: 10px solid #ccc;      }      @keyframes spin {        0% {          -webkit-transform: rotate(0deg);          -ms-transform: rotate(0deg);          -o-transform: rotate(0deg);          transform: rotate(0deg);        }        100% {          -webkit-transform: rotate(360deg);          -ms-transform: rotate(360deg);          -o-transform: rotate(360deg);          transform: rotate(360deg);        }      }      #atmosLogo {        position: absolute;        bottom: 4px;        left: 4px;        width: 150px;      }    </style>  </head>  <body>    <div id=\"mainContainer\">    <div id=\"loader\"></div>      <img id=\"loadingImage\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/load.jpg\" />      <div id=\"rotatedContainer\">        <img id=\"closeButton\" src=\"https://adcdn.zplayads.com/assets/images/x_button.png\"/>        <img id=\"restartButton\" src=\"https://adcdn.zplayads.com/assets/images/restart.png\"/>        <img id=\"muteButton\" src=\"\" />        <img id=\"atmosLogo\" src=\"https://adcdn.zplayads.com/assets/brand-logo.png\" />        <img id=\"installButton\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/downloadImage.png?key=906\" />        <video id=\"atmosPlayer\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/transcoded_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/load.jpg\" autoplay></video>        <audio id=\"bgMusicPlayer\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/bgMusic.mp3?key=41\" type=\"audio/mpeg\" loop></audio>        <video id=\"atmosPlayerEndCard\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/transcoded_end_card_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/end_card_load.jpg\" style=\"z-index: -10;\"></video>        <canvas id=\"gestureDetector\"></canvas>        <canvas id=\"userFeedback\"></canvas>      </div>    </div>    <script src=\"https://adcdn.zplayads.com/engine/prod/3.2.0/atmos.min.js\"></script>  </body></html>"
        }
    ]
}
```

#### 原生

##### 请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "A650AB0D-7BFC-2A81-3066-D3170947C3DA",
    "app_name": "iOS-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "iPhone8,1",
    "manufacturer": "Apple",
    "brand": "apple",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "",
    "imei": "",
    "android_id": "",
    "android_adid": "",
    "oaid": "",
    "idfa": "ADC65FAE-2FF8-423F-B3C8-244C4F2099E7",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "iOS",
    "os_version": "11.3",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
      "unit_type": 3,
      "ad_unit_id": "25AED008-6B6F-BADB-F873-AE7CA61DFE98",
      "native": {
        "assets": [
          {
            "id": 1,
            "required": 0,
            "title": {
              "len": 5
            }
          },
          {
            "id": 2,
            "required": 1,
            "image": {
              "type": 4,
              "width": 300,
              "height": 50
            }
          },
          {
            "id": 3,
            "required": 1,
            "data": {
              "type": 2,
              "len": 34
            }
          }
        ]
      }
    }
  ]
}
```

##### 返回示例

```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "6E4ADB48-6674-B91F-AE85-12E8CD21A847",
            "ad_unit_id": "25AED008-6B6F-BADB-F873-AE7CA61DFE98",
            "app_bundle": "834878585",
            "target_url": "https://itunes.apple.com/app/id834878585?mt=8",
            "target_url_type": 6,
            "playable_ads_html": "<!DOCTYPE html><html>  <head>    <meta name=\"viewport\" content=\"user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1\">    <title>Atmosplayer</title>    <meta charset=\"utf-8\"/>    <meta name=\"ad.size\" content=\"width=320,height=480\">    <script>      window.gestures = [  [    {      \"id\": 1,      \"type\": \"tap\",      \"attack\": 4580,      \"loop\": true,      \"loopStart\": 4580,      \"target\": 5530,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"circle\",          \"x\": 0.40532544378698226,          \"y\": 0.40532544378698226,          \"radius\": 0.3        }      ],      \"mandatory\": true,      \"tapDirection\": 1,      \"tapCount\": 1    }  ],  [    {      \"id\": 2,      \"type\": \"tap\",      \"attack\": 7816,      \"loop\": true,      \"loopStart\": 7816,      \"target\": 8766,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.16337935568704798,          \"y\": 0.6272189349112426,          \"width\": 0.41571334648257724,          \"height\": 0.3319526627218935        }      ],      \"mandatory\": true,      \"tapDirection\": 1,      \"tapCount\": 1    }  ]];      window.showUserGuide = false;      window.userGuideUrl = 'undefined';      window.userGuidePosition = {};      window.installAttributes = {\"x\":0.252465483234714,\"y\":0.8550295857988166,\"width\":0.5};      window.showFloatingMenu = false;      window.videoOrientation = 0;      window.disableUserFeedback = true;      window.sdk = '{\"is_landscape\":false,\"video\":{\"url\":\"https://adcdn.zplayads.com/prod/747810d0-6749-11e9-9db3-2f65b24f683c/1556192233855.html\",\"video_start_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_ended_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_did_fail_loading_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_did_fail_loading&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"present_sdk_trackers\":[],\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3D25AED008-6B6F-BADB-F873-AE7CA61DFE98%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79eo6tfiljm682jnkg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79eo6tfiljm682jnkg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"show_install_button_countdown\":1,\"show_close_button_countdown\":5,\"force_close_button\":-1},\"landing_page\":{\"url\":\"https://pa-cloud.zplayads.com/alfred/static/2018/11/29/059B2C08-95AE-51B0-DA71-B6636D2BF9AC.html\",\"show_replay_button\":0,\"landing_page_presented_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"landing_page_dismissed_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"click_to_action\":{\"action\":\"\",\"url\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3D25AED008-6B6F-BADB-F873-AE7CA61DFE98%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79eo6tfiljm682jnkg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79eo6tfiljm682jnkg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"itunes_id\":834878585,\"target_url\":\"https://itunes.apple.com/app/id834878585?mt=8\",\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3D25AED008-6B6F-BADB-F873-AE7CA61DFE98%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79eo6tfiljm682jnkg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79eo6tfiljm682jnkg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"]}},\"interval\":{\"default\":30,\"no_content\":60},\"tracker\":{\"download_start\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"download_end\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"force_close\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"close_url\":\"\",\"behavior_trajectory\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=behavior_trajectory&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"}}';      window.detached_install_url = '';      window.hasEndCard = true;      window.campaignType = 'ZPLAY';      window.endCardSettings = {  \"endCardType\": \"atmos\",  \"customEndCardUrl\": null,  \"loopStart\": 0,  \"hasRestartButton\": true,  \"hasCustomRestartShape\": true,  \"restartShape\": {    \"type\": \"circle\",    \"x\": 0.07922419460881001,    \"y\": 0.047337278106508875,    \"radius\": 0.06324786324786325  },  \"restartTapDirection\": \"1\",  \"installTapDirection\": \"1\",  \"installShape\": {    \"type\": \"square\",    \"x\": 0.5052596975673899,    \"y\": 0.7218934911242603,    \"width\": 0.9048652202498356,    \"height\": 0.3  }};      window.useFixRotation = false;    </script>    <style>      body {        background: black;      }      #rotatedContainer, #loadingImage {        display: none;      }      #loadingImage {        width: 100%;        height: 100%;        position: absolute;        top: 0;        left: 0;        right: 0;        bottom: 0;        filter: blur(4px);        z-index: 1;        pointer-events: none;      }      #loader-blur {        filter: blur(1.5rem);      }      #loader {        width: 50px;        height: 50px;        border-radius: 100%;        position: fixed;        top: 50%;        left: 50%;        z-index: 99;      }      #loader:before, #loader:after {        content: \"\";        position: absolute;        top: -35px;        left: -35px;        width: 100%;        height: 100%;        border-radius: 100%;        border: 10px solid transparent;        border-top-color: #6f9dec;      }      #loader:before {        z-index: 100;        animation: spin 1s infinite;      }      #loader:after {        border: 10px solid #ccc;      }      @keyframes spin {        0% {          -webkit-transform: rotate(0deg);          -ms-transform: rotate(0deg);          -o-transform: rotate(0deg);          transform: rotate(0deg);        }        100% {          -webkit-transform: rotate(360deg);          -ms-transform: rotate(360deg);          -o-transform: rotate(360deg);          transform: rotate(360deg);        }      }      #atmosLogo {        position: absolute;        bottom: 4px;        left: 4px;        width: 150px;      }    </style>  </head>  <body>    <div id=\"mainContainer\">    <div id=\"loader\"></div>      <img id=\"loadingImage\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/load.jpg\" />      <div id=\"rotatedContainer\">        <img id=\"closeButton\" src=\"https://adcdn.zplayads.com/assets/images/x_button.png\"/>        <img id=\"restartButton\" src=\"https://adcdn.zplayads.com/assets/images/restart.png\"/>        <img id=\"muteButton\" src=\"\" />        <img id=\"atmosLogo\" src=\"https://adcdn.zplayads.com/assets/brand-logo.png\" />        <img id=\"installButton\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/downloadImage.png?key=906\" />        <video id=\"atmosPlayer\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/transcoded_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/load.jpg\" autoplay></video>        <audio id=\"bgMusicPlayer\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/bgMusic.mp3?key=41\" type=\"audio/mpeg\" loop></audio>        <video id=\"atmosPlayerEndCard\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/transcoded_end_card_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/end_card_load.jpg\" style=\"z-index: -10;\"></video>        <canvas id=\"gestureDetector\"></canvas>        <canvas id=\"userFeedback\"></canvas>      </div>    </div>    <script src=\"https://adcdn.zplayads.com/engine/prod/3.2.0/atmos.min.js\"></script>  </body></html>",
            "native": {
                "imp_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=native_present&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "assets": [
                    {
                        "id": 1,
                        "title": {
                            "text": "PopStar!"
                        }
                    },
                    {
                        "id": 2,
                        "required": 1,
                        "image": {
                            "width": 300,
                            "height": 50,
                            "url": "https://static.zplay.cn/temp/img/nativeDownBtn.png"
                        }
                    },
                    {
                        "id": 3,
                        "required": 1,
                        "data": {
                            "label": "2",
                            "value": "PopStar! – The most fun puzzle game in the world!"
                        }
                    }
                ],
                "link": {
                    "app_bundle": "834878585",
                    "click_tracker": [
                        "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=25AED008-6B6F-BADB-F873-AE7CA61DFE98&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79eo6tfiljm682jnkg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_native_button&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0",
                        "https://app.appsflyer.com/id834878585?c=6E4ADB48-6674-B91F-AE85-12E8CD21A847&af_siteid=A650AB0D-7BFC-2A81-3066-D3170947C3DA&af_sub_siteid=25AED008-6B6F-BADB-F873-AE7CA61DFE98&af_cost_model=cpi&af_cost_currency=CNY&af_cost_value=2&pid=zplay_int&af_click_lookback=7d&clickid=bj79eo6tfiljm682jnkg&promote_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&android_id=&advertising_id=&imei=&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&secret=bj79eo6tfiljm682jnkg&click_lookback={af_click_lookback}&viewthrough_lookback={viewthrough_lookback}"
                    ],
                    "target_url": "https://itunes.apple.com/app/id834878585?mt=8",
                    "target_url_type": 6
                }
            }
        }
    ]
}
```

#### 激励视频

##### 请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "A650AB0D-7BFC-2A81-3066-D3170947C3DA",
    "app_name": "iOS-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "iPhone8,1",
    "manufacturer": "Apple",
    "brand": "apple",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "",
    "imei": "",
    "android_id": "",
    "android_adid": "",
    "oaid": "",
    "idfa": "ADC65FAE-2FF8-423F-B3C8-244C4F2099E7",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "iOS",
    "os_version": "11.3",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
      "unit_type": 4,
      "ad_unit_id": "BAE5DAAC-04A2-2591-D5B0-38FA846E45E7"
    }
  ]
}
```

##### 返回示例

```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "6E4ADB48-6674-B91F-AE85-12E8CD21A847",
            "ad_unit_id": "BAE5DAAC-04A2-2591-D5B0-38FA846E45E7",
            "app_bundle": "834878585",
            "target_url": "https://itunes.apple.com/app/id834878585?mt=8",
            "target_url_type": 6,
            "playable_ads_html": "<!DOCTYPE html><html>  <head>    <meta name=\"viewport\" content=\"user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1\">    <title>Atmosplayer</title>    <meta charset=\"utf-8\"/>    <meta name=\"ad.size\" content=\"width=320,height=480\">    <script>      window.gestures = [  [    {      \"id\": 1,      \"type\": \"tap\",      \"attack\": 4580,      \"loop\": true,      \"loopStart\": 4580,      \"target\": 5530,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"circle\",          \"x\": 0.40532544378698226,          \"y\": 0.40532544378698226,          \"radius\": 0.3        }      ],      \"mandatory\": true,      \"tapDirection\": 1,      \"tapCount\": 1    }  ],  [    {      \"id\": 2,      \"type\": \"tap\",      \"attack\": 7816,      \"loop\": true,      \"loopStart\": 7816,      \"target\": 8766,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.16337935568704798,          \"y\": 0.6272189349112426,          \"width\": 0.41571334648257724,          \"height\": 0.3319526627218935        }      ],      \"mandatory\": true,      \"tapDirection\": 1,      \"tapCount\": 1    }  ]];      window.showUserGuide = false;      window.userGuideUrl = 'undefined';      window.userGuidePosition = {};      window.installAttributes = {\"x\":0.252465483234714,\"y\":0.8550295857988166,\"width\":0.5};      window.showFloatingMenu = false;      window.videoOrientation = 0;      window.disableUserFeedback = true;      window.sdk = '{\"is_landscape\":false,\"video\":{\"url\":\"https://adcdn.zplayads.com/prod/747810d0-6749-11e9-9db3-2f65b24f683c/1556192233855.html\",\"video_start_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_ended_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_did_fail_loading_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_did_fail_loading&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"present_sdk_trackers\":[],\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3DBAE5DAAC-04A2-2591-D5B0-38FA846E45E7%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79f6etfiljm682kvfg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79f6etfiljm682kvfg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"show_install_button_countdown\":1,\"show_close_button_countdown\":15,\"force_close_button\":5},\"landing_page\":{\"url\":\"https://pa-cloud.zplayads.com/alfred/static/2018/11/29/059B2C08-95AE-51B0-DA71-B6636D2BF9AC.html\",\"show_replay_button\":0,\"landing_page_presented_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"landing_page_dismissed_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"click_to_action\":{\"action\":\"\",\"url\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3DBAE5DAAC-04A2-2591-D5B0-38FA846E45E7%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79f6etfiljm682kvfg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79f6etfiljm682kvfg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"itunes_id\":834878585,\"target_url\":\"https://itunes.apple.com/app/id834878585?mt=8\",\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fid834878585%3Fc%3D6E4ADB48-6674-B91F-AE85-12E8CD21A847%26af_siteid%3DA650AB0D-7BFC-2A81-3066-D3170947C3DA%26af_sub_siteid%3DBAE5DAAC-04A2-2591-D5B0-38FA846E45E7%26af_cost_model%3Dcpi%26af_cost_currency%3DCNY%26af_cost_value%3D2%26pid%3Dzplay_int%26af_click_lookback%3D7d%26clickid%3Dbj79f6etfiljm682kvfg%26promote_app_id%3D8B6BC1BB-368A-6C77-735A-929E38E20D9F%26android_id%3D%26advertising_id%3D%26imei%3D%26idfa%3DADC65FAE-2FF8-423F-B3C8-244C4F2099E7%26secret%3Dbj79f6etfiljm682kvfg%26click_lookback%3D%7Baf_click_lookback%7D%26viewthrough_lookback%3D%7Bviewthrough_lookback%7D&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"]}},\"interval\":{\"default\":30,\"no_content\":60},\"tracker\":{\"download_start\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"download_end\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"force_close\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"close_url\":\"\",\"behavior_trajectory\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=BAE5DAAC-04A2-2591-D5B0-38FA846E45E7&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=C0EB1023-8170-E612-5ABA-B437C26CC709&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79f6etfiljm682kvfg&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=behavior_trajectory&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"}}';      window.detached_install_url = '';      window.hasEndCard = true;      window.campaignType = 'ZPLAY';      window.endCardSettings = {  \"endCardType\": \"atmos\",  \"customEndCardUrl\": null,  \"loopStart\": 0,  \"hasRestartButton\": true,  \"hasCustomRestartShape\": true,  \"restartShape\": {    \"type\": \"circle\",    \"x\": 0.07922419460881001,    \"y\": 0.047337278106508875,    \"radius\": 0.06324786324786325  },  \"restartTapDirection\": \"1\",  \"installTapDirection\": \"1\",  \"installShape\": {    \"type\": \"square\",    \"x\": 0.5052596975673899,    \"y\": 0.7218934911242603,    \"width\": 0.9048652202498356,    \"height\": 0.3  }};      window.useFixRotation = false;    </script>    <style>      body {        background: black;      }      #rotatedContainer, #loadingImage {        display: none;      }      #loadingImage {        width: 100%;        height: 100%;        position: absolute;        top: 0;        left: 0;        right: 0;        bottom: 0;        filter: blur(4px);        z-index: 1;        pointer-events: none;      }      #loader-blur {        filter: blur(1.5rem);      }      #loader {        width: 50px;        height: 50px;        border-radius: 100%;        position: fixed;        top: 50%;        left: 50%;        z-index: 99;      }      #loader:before, #loader:after {        content: \"\";        position: absolute;        top: -35px;        left: -35px;        width: 100%;        height: 100%;        border-radius: 100%;        border: 10px solid transparent;        border-top-color: #6f9dec;      }      #loader:before {        z-index: 100;        animation: spin 1s infinite;      }      #loader:after {        border: 10px solid #ccc;      }      @keyframes spin {        0% {          -webkit-transform: rotate(0deg);          -ms-transform: rotate(0deg);          -o-transform: rotate(0deg);          transform: rotate(0deg);        }        100% {          -webkit-transform: rotate(360deg);          -ms-transform: rotate(360deg);          -o-transform: rotate(360deg);          transform: rotate(360deg);        }      }      #atmosLogo {        position: absolute;        bottom: 4px;        left: 4px;        width: 150px;      }    </style>  </head>  <body>    <div id=\"mainContainer\">    <div id=\"loader\"></div>      <img id=\"loadingImage\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/load.jpg\" />      <div id=\"rotatedContainer\">        <img id=\"closeButton\" src=\"https://adcdn.zplayads.com/assets/images/x_button.png\"/>        <img id=\"restartButton\" src=\"https://adcdn.zplayads.com/assets/images/restart.png\"/>        <img id=\"muteButton\" src=\"\" />        <img id=\"atmosLogo\" src=\"https://adcdn.zplayads.com/assets/brand-logo.png\" />        <img id=\"installButton\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/downloadImage.png?key=906\" />        <video id=\"atmosPlayer\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/transcoded_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/load.jpg\" autoplay></video>        <audio id=\"bgMusicPlayer\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/bgMusic.mp3?key=41\" type=\"audio/mpeg\" loop></audio>        <video id=\"atmosPlayerEndCard\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/transcoded_end_card_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/747810d0-6749-11e9-9db3-2f65b24f683c/end_card_load.jpg\" style=\"z-index: -10;\"></video>        <canvas id=\"gestureDetector\"></canvas>        <canvas id=\"userFeedback\"></canvas>      </div>    </div>    <script src=\"https://adcdn.zplayads.com/engine/prod/3.2.0/atmos.min.js\"></script>  </body></html>"
        }
    ]
}
```

#### 视频物料请求

任何一种广告位类型都可以请求视频对象，以下示例代码以插屏广告位为例。

##### VAST协议请求示例
```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "A650AB0D-7BFC-2A81-3066-D3170947C3DA",
    "app_name": "iOS-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "iPhone8,1",
    "manufacturer": "Apple",
    "brand": "apple",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "",
    "imei": "",
    "android_id": "",
    "android_adid": "",
    "oaid": "",
    "idfa": "ADC65FAE-2FF8-423F-B3C8-244C4F2099E7",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "iOS",
    "os_version": "11.3",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
    "video":{
    "mimes":["mp4"],
    "minduration":"5",
    "maxduration":"30",
    "protocols":[3,6],
    "startdelay":-1,
    "linearity":1,
    "minbitrate":100,
    "maxbitrate":10000,
    "pos":7,
    "w": "900",
    "h": "1600"
     },
      "unit_type": 1,
      "ad_unit_id": "0868EBC0-7768-40CA-4226-F9924221C8EB"
    }
  ]
}
```

##### VAST协议返回示例
```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "6E4ADB48-6674-B91F-AE85-12E8CD21A847",
            "ad_unit_id": "0868EBC0-7768-40CA-4226-F9924221C8EB",
            "app_bundle": "834878585",
            "target_url": "https://itunes.apple.com/app/id834878585?mt=8",
            "target_url_type": 6,
            "adm": "<VAST version=\"3\"><Ad id=\"6E4ADB48-6674-B91F-AE85-12E8CD21A847\"><InLine><AdSystem version=\"1.0\"><![CDATA[atmosplay]]></AdSystem><AdTitle><![CDATA[消灭星星经典版-专用于新功能测试-广告1-插屏-勿动]]></AdTitle><Impression><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Impression><Creatives><Creative id=\"87521473-8078-D25B-1EB6-63C16963AA53\"><Linear><Duration>00:00:00</Duration><TrackingEvents><Tracking event=\"complete\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"pause\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_paused&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"resume\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_resumed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"closeLinear\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"skip\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking></TrackingEvents><VideoClicks><ClickThrough><![CDATA[https://itunes.apple.com/app/id834878585?mt=8]]></ClickThrough><ClickTracking><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7phtetfiljm69dlvr0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></ClickTracking><ClickTracking><![CDATA[https://app.appsflyer.com/id834878585?c=6E4ADB48-6674-B91F-AE85-12E8CD21A847&af_siteid=A650AB0D-7BFC-2A81-3066-D3170947C3DA&af_sub_siteid=0868EBC0-7768-40CA-4226-F9924221C8EB&af_cost_model=cpi&af_cost_currency=CNY&af_cost_value=2&pid=zplay_int&af_click_lookback=7d&clickid=bj7phtetfiljm69dlvr0&promote_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&android_id=&advertising_id=&imei=&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&secret=bj7phtetfiljm69dlvr0&click_lookback={af_click_lookback}&viewthrough_lookback={viewthrough_lookback}]]></ClickTracking></VideoClicks><MediaFiles><MediaFile delivery=\"streaming\" type=\"mp4\" bitrate=\"1911\" width=\"720\" height=\"1280\"><![CDATA[https://adcdn.zplayads.com/alfred/static/2019/05/06/87521473-8078-D25B-1EB6-63C16963AA5320190506100609.mp4]]></MediaFile></MediaFiles></Linear></Creative></Creatives><Description></Description><Survey></Survey></InLine></Ad></VAST>"
        }
    ]
}
```


##### 非VAST协议请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "A650AB0D-7BFC-2A81-3066-D3170947C3DA",
    "app_name": "iOS-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "iPhone8,1",
    "manufacturer": "Apple",
    "brand": "apple",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "",
    "imei": "",
    "android_id": "",
    "android_adid": "",
    "oaid": "",
    "idfa": "ADC65FAE-2FF8-423F-B3C8-244C4F2099E7",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "iOS",
    "os_version": "11.3",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
    "video":{
    "mimes":["mp4"],
    "minduration":"5",
    "maxduration":"30",
    "w": "900",
    "h": "1600",
    "startdelay":-1,
    "linearity":1,
    "minbitrate":100,
    "maxbitrate":10000,
    "pos":8
     },
      "unit_type": 1,
      "ad_unit_id": "0868EBC0-7768-40CA-4226-F9924221C8EB"
    }
  ]
}
```

##### 非VAST协议返回示例
```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "6E4ADB48-6674-B91F-AE85-12E8CD21A847",
            "ad_unit_id": "0868EBC0-7768-40CA-4226-F9924221C8EB",
            "app_bundle": "834878585",
            "target_url": "https://itunes.apple.com/app/id834878585?mt=8",
            "target_url_type": 6,
            "video": {
                "video_url": "https://adcdn.zplayads.com/alfred/static/2019/05/06/87521473-8078-D25B-1EB6-63C16963AA5320190506100609.mp4",
                "end_card": "https://pa-cloud.zplayads.com/alfred/static/2019/04/03/1B82AD6C-5369-7312-0B6C-FE8C84365DD3.html",
                "mimes": "mp4",
                "bitrate": 1911,
                "download_start_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "download_ended_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "start_playing_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "pause_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_paused&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "resume_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_resumed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "end_playing_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "end_card_displayed_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "video_click_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0",
                    "https://app.appsflyer.com/id834878585?c=6E4ADB48-6674-B91F-AE85-12E8CD21A847&af_siteid=A650AB0D-7BFC-2A81-3066-D3170947C3DA&af_sub_siteid=0868EBC0-7768-40CA-4226-F9924221C8EB&af_cost_model=cpi&af_cost_currency=CNY&af_cost_value=2&pid=zplay_int&af_click_lookback=7d&clickid=bj7pi7mtfiljm69dmln0&promote_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&android_id=&advertising_id=&imei=&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&secret=bj7pi7mtfiljm69dmln0&click_lookback={af_click_lookback}&viewthrough_lookback={viewthrough_lookback}"
                ],
                "end_card_click_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0",
                    "https://app.appsflyer.com/id834878585?c=6E4ADB48-6674-B91F-AE85-12E8CD21A847&af_siteid=A650AB0D-7BFC-2A81-3066-D3170947C3DA&af_sub_siteid=0868EBC0-7768-40CA-4226-F9924221C8EB&af_cost_model=cpi&af_cost_currency=CNY&af_cost_value=2&pid=zplay_int&af_click_lookback=7d&clickid=bj7pi7mtfiljm69dmln0&promote_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&android_id=&advertising_id=&imei=&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&secret=bj7pi7mtfiljm69dmln0&click_lookback={af_click_lookback}&viewthrough_lookback={viewthrough_lookback}"
                ],
                "close_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=6E4ADB48-6674-B91F-AE85-12E8CD21A847&ad_unit_id=0868EBC0-7768-40CA-4226-F9924221C8EB&app_id=A650AB0D-7BFC-2A81-3066-D3170947C3DA&brand=apple&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=87521473-8078-D25B-1EB6-63C16963AA53&developer_share_rate=70&device_model=iPhone8%2C1&device_type=phone&engine_events=&height=0&idfa=ADC65FAE-2FF8-423F-B3C8-244C4F2099E7&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=iOS&os_version=11.3&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=8B6BC1BB-368A-6C77-735A-929E38E20D9F&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj7pi96tfiljm69dmp40&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ]
            }
        }
    ]
}
```


### Android

#### 插屏

##### 请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "5C5419C7-A2DE-88BC-A311-C3E7A646F6AF",
    "app_name": "Android-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "Android",
    "manufacturer": "Samsung",
    "brand": "Samsung",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "28b92b0dde49cff7190841686960c6bc",
    "imei": "6cd5c276d3f6ce4205dde5b1bf913361",
    "android_id": "adf3b4675742e11a73db503d1273d860",
    "android_adid": "600c8c48-afca-42b8-89e5-4612c086c3cc",
    "oaid": "fe8061aa-1079-35d2-a218-c4aa739f7845",
    "idfa": "",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "Android",
    "os_version": "8.0.0",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
      "unit_type": 1,
      "ad_unit_id": "19393189-C4EB-3886-60B9-13B39407064E"
    }
  ]
}
```

##### 返回示例

```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "476FC7D0-C133-42F5-ED04-20F8C2BF5882",
            "ad_unit_id": "19393189-C4EB-3886-60B9-13B39407064E",
            "app_bundle": "com.zplay.beatracer",
            "store_bundle": "com.android.vending",
            "target_url": "https://play.google.com/store/apps/details?id=com.zplay.beatracer",
            "target_url_type": 6,
            "playable_ads_html": "<!DOCTYPE html><html>  <head>    <meta name=\"viewport\" content=\"user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1\">    <title>Atmosplayer</title>    <meta charset=\"utf-8\"/>    <meta name=\"ad.size\" content=\"width=320,height=480\">    <script>      window.gestures = [  [    {      \"id\": 1,      \"type\": \"swipe\",      \"attack\": 117,      \"loop\": true,      \"loopStart\": 117,      \"target\": 6717,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.49473619329388563,          \"y\": 0.5769230769230769,          \"width\": 0.8053254437869823,          \"height\": 0.31124260355029587        }      ],      \"mandatory\": true,      \"swipeDirection\": \"LEFT\"    }  ],  [    {      \"id\": 2,      \"type\": \"swipe\",      \"attack\": 9015,      \"loop\": true,      \"loopStart\": 9015,      \"target\": 14515,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.4842085798816568,          \"y\": 0.5946745562130177,          \"width\": 0.8842825443786984,          \"height\": 0.3142011834319527        }      ],      \"mandatory\": true,      \"swipeDirection\": \"RIGHT\"    }  ],  [    {      \"id\": 3,      \"type\": \"swipe\",      \"attack\": 18221,      \"loop\": true,      \"loopStart\": 18221,      \"target\": 23871,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.5526380670611439,          \"y\": 0.47041420118343197,          \"width\": 0.7368959566074951,          \"height\": 0.4502958579881657        }      ],      \"mandatory\": true,      \"swipeDirection\": \"UP\"    }  ],  [    {      \"id\": 4,      \"type\": \"swipe\",      \"attack\": 29573,      \"loop\": true,      \"loopStart\": 29573,      \"target\": 35156,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.6737056213017751,          \"y\": 0.5443786982248521,          \"width\": 0.5631903353057199,          \"height\": 0.491715976331361        }      ],      \"mandatory\": true,      \"swipeDirection\": \"DOWN\"    }  ]];      window.showUserGuide = false;      window.userGuideUrl = 'undefined';      window.userGuidePosition = {};      window.installAttributes = {\"x\":0.15470238692207408,\"y\":0.8612141878113195,\"width\":0.4054893914574488};      window.showFloatingMenu = false;      window.videoOrientation = 0;      window.disableUserFeedback = true;      window.sdk = '{\"is_landscape\":false,\"video\":{\"url\":\"https://adcdn.zplayads.com/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/1556253780054.html\",\"video_start_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_ended_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_did_fail_loading_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_did_fail_loading&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"present_sdk_trackers\":[],\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"show_install_button_countdown\":1,\"show_close_button_countdown\":5,\"force_close_button\":-1},\"landing_page\":{\"url\":\"https://pa-cloud.zplayads.com/alfred/static/2018/11/29/BA37D276-1A04-665C-C759-D6A65576DD6C.html\",\"show_replay_button\":0,\"landing_page_presented_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"landing_page_dismissed_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"click_to_action\":{\"action\":\"\",\"url\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"itunes_id\":0,\"target_url\":\"https://play.google.com/store/apps/details?id=com.zplay.beatracer\",\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"]}},\"interval\":{\"default\":30,\"no_content\":60},\"tracker\":{\"download_start\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"download_end\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"force_close\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"close_url\":\"\",\"behavior_trajectory\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79fvutfiljm682n8a0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=behavior_trajectory&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"}}';      window.detached_install_url = '';      window.hasEndCard = true;      window.campaignType = 'ZPLAY';      window.endCardSettings = {  \"endCardType\": \"atmos\",  \"customEndCardUrl\": null,  \"loopStart\": 0,  \"hasRestartButton\": true,  \"hasCustomRestartShape\": true,  \"restartShape\": {    \"type\": \"circle\",    \"x\": 0.06836785009861929,    \"y\": 0.03550295857988164,    \"radius\": 0.06314102564102564  },  \"restartTapDirection\": \"1\",  \"installTapDirection\": \"1\",  \"installShape\": {    \"type\": \"square\",    \"x\": 0.5,    \"y\": 0.40236686390532544,    \"width\": 0.8632273175542406,    \"height\": 0.4331360946745562  }};      window.useFixRotation = false;    </script>    <style>      body {        background: black;      }      #rotatedContainer, #loadingImage {        display: none;      }      #loadingImage {        width: 100%;        height: 100%;        position: absolute;        top: 0;        left: 0;        right: 0;        bottom: 0;        filter: blur(4px);        z-index: 1;        pointer-events: none;      }      #loader-blur {        filter: blur(1.5rem);      }      #loader {        width: 50px;        height: 50px;        border-radius: 100%;        position: fixed;        top: 50%;        left: 50%;        z-index: 99;      }      #loader:before, #loader:after {        content: \"\";        position: absolute;        top: -35px;        left: -35px;        width: 100%;        height: 100%;        border-radius: 100%;        border: 10px solid transparent;        border-top-color: #6f9dec;      }      #loader:before {        z-index: 100;        animation: spin 1s infinite;      }      #loader:after {        border: 10px solid #ccc;      }      @keyframes spin {        0% {          -webkit-transform: rotate(0deg);          -ms-transform: rotate(0deg);          -o-transform: rotate(0deg);          transform: rotate(0deg);        }        100% {          -webkit-transform: rotate(360deg);          -ms-transform: rotate(360deg);          -o-transform: rotate(360deg);          transform: rotate(360deg);        }      }      #atmosLogo {        position: absolute;        bottom: 4px;        left: 4px;        width: 150px;      }    </style>  </head>  <body>    <div id=\"mainContainer\">    <div id=\"loader\"></div>      <img id=\"loadingImage\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/load.jpg\" />      <div id=\"rotatedContainer\">        <img id=\"closeButton\" src=\"https://adcdn.zplayads.com/assets/images/x_button.png\"/>        <img id=\"restartButton\" src=\"https://adcdn.zplayads.com/assets/images/restart.png\"/>        <img id=\"muteButton\" src=\"\" />        <img id=\"atmosLogo\" src=\"https://adcdn.zplayads.com/assets/brand-logo.png\" />        <img id=\"installButton\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/downloadImage.png?key=547\" />        <video id=\"atmosPlayer\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/transcoded_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/load.jpg\" autoplay></video>        <audio id=\"bgMusicPlayer\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/bgMusic.mp3?key=358\" type=\"audio/mpeg\" loop></audio>        <video id=\"atmosPlayerEndCard\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/transcoded_end_card_video_1000kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/end_card_load.jpg\" style=\"z-index: -10;\"></video>        <canvas id=\"gestureDetector\"></canvas>        <canvas id=\"userFeedback\"></canvas>      </div>    </div>    <script src=\"https://adcdn.zplayads.com/engine/prod/3.2.0/atmos.min.js\"></script>  </body></html>"
        }
    ]
}
```

#### 原生

##### 请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "5C5419C7-A2DE-88BC-A311-C3E7A646F6AF",
    "app_name": "Android-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "Android",
    "manufacturer": "Samsung",
    "brand": "Samsung",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "28b92b0dde49cff7190841686960c6bc",
    "imei": "6cd5c276d3f6ce4205dde5b1bf913361",
    "android_id": "adf3b4675742e11a73db503d1273d860",
    "android_adid": "600c8c48-afca-42b8-89e5-4612c086c3cc",
    "oaid": "fe8061aa-1079-35d2-a218-c4aa739f7845",
    "idfa": "",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "Android",
    "os_version": "8.0.0",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
      "unit_type": 3,
      "ad_unit_id": "BB8452AD-06E7-140B-00DC-FD6CB6B40FAA",
      "native": {
        "assets": [
          {
            "id": 1,
            "required": 0,
            "title": {
              "len": 5
            }
          },
          {
            "id": 2,
            "required": 1,
            "image": {
              "type": 4,
              "width": 300,
              "height": 50
            }
          },
          {
            "id": 3,
            "required": 1,
            "data": {
              "type": 2,
              "len": 34
            }
          }
        ]
      }
    }
  ]
}
```

##### 返回示例

```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "476FC7D0-C133-42F5-ED04-20F8C2BF5882",
            "ad_unit_id": "BB8452AD-06E7-140B-00DC-FD6CB6B40FAA",
            "app_bundle": "com.zplay.beatracer",
            "store_bundle": "com.android.vending",
            "target_url": "https://play.google.com/store/apps/details?id=com.zplay.beatracer",
            "target_url_type": 6,
            "playable_ads_html": "<!DOCTYPE html><html>  <head>    <meta name=\"viewport\" content=\"user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1\">    <title>Atmosplayer</title>    <meta charset=\"utf-8\"/>    <meta name=\"ad.size\" content=\"width=320,height=480\">    <script>      window.gestures = [  [    {      \"id\": 1,      \"type\": \"swipe\",      \"attack\": 117,      \"loop\": true,      \"loopStart\": 117,      \"target\": 6717,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.49473619329388563,          \"y\": 0.5769230769230769,          \"width\": 0.8053254437869823,          \"height\": 0.31124260355029587        }      ],      \"mandatory\": true,      \"swipeDirection\": \"LEFT\"    }  ],  [    {      \"id\": 2,      \"type\": \"swipe\",      \"attack\": 9015,      \"loop\": true,      \"loopStart\": 9015,      \"target\": 14515,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.4842085798816568,          \"y\": 0.5946745562130177,          \"width\": 0.8842825443786984,          \"height\": 0.3142011834319527        }      ],      \"mandatory\": true,      \"swipeDirection\": \"RIGHT\"    }  ],  [    {      \"id\": 3,      \"type\": \"swipe\",      \"attack\": 18221,      \"loop\": true,      \"loopStart\": 18221,      \"target\": 23871,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.5526380670611439,          \"y\": 0.47041420118343197,          \"width\": 0.7368959566074951,          \"height\": 0.4502958579881657        }      ],      \"mandatory\": true,      \"swipeDirection\": \"UP\"    }  ],  [    {      \"id\": 4,      \"type\": \"swipe\",      \"attack\": 29573,      \"loop\": true,      \"loopStart\": 29573,      \"target\": 35156,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.6737056213017751,          \"y\": 0.5443786982248521,          \"width\": 0.5631903353057199,          \"height\": 0.491715976331361        }      ],      \"mandatory\": true,      \"swipeDirection\": \"DOWN\"    }  ]];      window.showUserGuide = false;      window.userGuideUrl = 'undefined';      window.userGuidePosition = {};      window.installAttributes = {\"x\":0.15470238692207408,\"y\":0.8612141878113195,\"width\":0.4054893914574488};      window.showFloatingMenu = false;      window.videoOrientation = 0;      window.disableUserFeedback = true;      window.sdk = '{\"is_landscape\":false,\"video\":{\"url\":\"https://adcdn.zplayads.com/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/1556253780054.html\",\"video_start_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_ended_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_did_fail_loading_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_did_fail_loading&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"present_sdk_trackers\":[],\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"show_install_button_countdown\":1,\"show_close_button_countdown\":5,\"force_close_button\":-1},\"landing_page\":{\"url\":\"https://pa-cloud.zplayads.com/alfred/static/2018/11/29/BA37D276-1A04-665C-C759-D6A65576DD6C.html\",\"show_replay_button\":0,\"landing_page_presented_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"landing_page_dismissed_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"click_to_action\":{\"action\":\"\",\"url\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"itunes_id\":0,\"target_url\":\"https://play.google.com/store/apps/details?id=com.zplay.beatracer\",\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"]}},\"interval\":{\"default\":30,\"no_content\":60},\"tracker\":{\"download_start\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"download_end\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"force_close\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"close_url\":\"\",\"behavior_trajectory\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=behavior_trajectory&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"}}';      window.detached_install_url = '';      window.hasEndCard = true;      window.campaignType = 'ZPLAY';      window.endCardSettings = {  \"endCardType\": \"atmos\",  \"customEndCardUrl\": null,  \"loopStart\": 0,  \"hasRestartButton\": true,  \"hasCustomRestartShape\": true,  \"restartShape\": {    \"type\": \"circle\",    \"x\": 0.06836785009861929,    \"y\": 0.03550295857988164,    \"radius\": 0.06314102564102564  },  \"restartTapDirection\": \"1\",  \"installTapDirection\": \"1\",  \"installShape\": {    \"type\": \"square\",    \"x\": 0.5,    \"y\": 0.40236686390532544,    \"width\": 0.8632273175542406,    \"height\": 0.4331360946745562  }};      window.useFixRotation = false;    </script>    <style>      body {        background: black;      }      #rotatedContainer, #loadingImage {        display: none;      }      #loadingImage {        width: 100%;        height: 100%;        position: absolute;        top: 0;        left: 0;        right: 0;        bottom: 0;        filter: blur(4px);        z-index: 1;        pointer-events: none;      }      #loader-blur {        filter: blur(1.5rem);      }      #loader {        width: 50px;        height: 50px;        border-radius: 100%;        position: fixed;        top: 50%;        left: 50%;        z-index: 99;      }      #loader:before, #loader:after {        content: \"\";        position: absolute;        top: -35px;        left: -35px;        width: 100%;        height: 100%;        border-radius: 100%;        border: 10px solid transparent;        border-top-color: #6f9dec;      }      #loader:before {        z-index: 100;        animation: spin 1s infinite;      }      #loader:after {        border: 10px solid #ccc;      }      @keyframes spin {        0% {          -webkit-transform: rotate(0deg);          -ms-transform: rotate(0deg);          -o-transform: rotate(0deg);          transform: rotate(0deg);        }        100% {          -webkit-transform: rotate(360deg);          -ms-transform: rotate(360deg);          -o-transform: rotate(360deg);          transform: rotate(360deg);        }      }      #atmosLogo {        position: absolute;        bottom: 4px;        left: 4px;        width: 150px;      }    </style>  </head>  <body>    <div id=\"mainContainer\">    <div id=\"loader\"></div>      <img id=\"loadingImage\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/load.jpg\" />      <div id=\"rotatedContainer\">        <img id=\"closeButton\" src=\"https://adcdn.zplayads.com/assets/images/x_button.png\"/>        <img id=\"restartButton\" src=\"https://adcdn.zplayads.com/assets/images/restart.png\"/>        <img id=\"muteButton\" src=\"\" />        <img id=\"atmosLogo\" src=\"https://adcdn.zplayads.com/assets/brand-logo.png\" />        <img id=\"installButton\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/downloadImage.png?key=547\" />        <video id=\"atmosPlayer\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/transcoded_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/load.jpg\" autoplay></video>        <audio id=\"bgMusicPlayer\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/bgMusic.mp3?key=358\" type=\"audio/mpeg\" loop></audio>        <video id=\"atmosPlayerEndCard\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/transcoded_end_card_video_1000kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/end_card_load.jpg\" style=\"z-index: -10;\"></video>        <canvas id=\"gestureDetector\"></canvas>        <canvas id=\"userFeedback\"></canvas>      </div>    </div>    <script src=\"https://adcdn.zplayads.com/engine/prod/3.2.0/atmos.min.js\"></script>  </body></html>",
            "native": {
                "imp_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=native_present&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "assets": [
                    {
                        "id": 1,
                        "title": {
                            "text": "Beat Racer"
                        }
                    },
                    {
                        "id": 2,
                        "required": 1,
                        "image": {
                            "width": 300,
                            "height": 50,
                            "url": "https://static.zplay.cn/temp/img/nativeDownBtn.png"
                        }
                    },
                    {
                        "id": 3,
                        "required": 1,
                        "data": {
                            "label": "2",
                            "value": "Explore the world by following the trail of alluring beats!"
                        }
                    }
                ],
                "link": {
                    "app_bundle": "com.zplay.beatracer",
                    "click_tracker": [
                        "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=BB8452AD-06E7-140B-00DC-FD6CB6B40FAA&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79gb6tfiljm682o890&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_native_button&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0",
                        "https://app.appsflyer.com/com.zplay.beatracer?pid=zplayads&c=playable1"
                    ],
                    "target_url": "https://play.google.com/store/apps/details?id=com.zplay.beatracer",
                    "target_url_type": 6
                }
            }
        }
    ]
}
```

#### 激励视频

##### 请求示例

```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "5C5419C7-A2DE-88BC-A311-C3E7A646F6AF",
    "app_name": "Android-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "Android",
    "manufacturer": "Samsung",
    "brand": "Samsung",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "28b92b0dde49cff7190841686960c6bc",
    "imei": "6cd5c276d3f6ce4205dde5b1bf913361",
    "android_id": "adf3b4675742e11a73db503d1273d860",
    "android_adid": "600c8c48-afca-42b8-89e5-4612c086c3cc",
    "oaid": "fe8061aa-1079-35d2-a218-c4aa739f7845",
    "idfa": "",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "Android",
    "os_version": "8.0.0",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
      "unit_type": 4,
      "ad_unit_id": "3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC"
    }
  ]
}
```

##### 返回示例

```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "476FC7D0-C133-42F5-ED04-20F8C2BF5882",
            "ad_unit_id": "3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC",
            "app_bundle": "com.zplay.beatracer",
            "store_bundle": "com.android.vending",
            "target_url": "https://play.google.com/store/apps/details?id=com.zplay.beatracer",
            "target_url_type": 6,
            "playable_ads_html": "<!DOCTYPE html><html>  <head>    <meta name=\"viewport\" content=\"user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1\">    <title>Atmosplayer</title>    <meta charset=\"utf-8\"/>    <meta name=\"ad.size\" content=\"width=320,height=480\">    <script>      window.gestures = [  [    {      \"id\": 1,      \"type\": \"swipe\",      \"attack\": 117,      \"loop\": true,      \"loopStart\": 117,      \"target\": 6717,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.49473619329388563,          \"y\": 0.5769230769230769,          \"width\": 0.8053254437869823,          \"height\": 0.31124260355029587        }      ],      \"mandatory\": true,      \"swipeDirection\": \"LEFT\"    }  ],  [    {      \"id\": 2,      \"type\": \"swipe\",      \"attack\": 9015,      \"loop\": true,      \"loopStart\": 9015,      \"target\": 14515,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.4842085798816568,          \"y\": 0.5946745562130177,          \"width\": 0.8842825443786984,          \"height\": 0.3142011834319527        }      ],      \"mandatory\": true,      \"swipeDirection\": \"RIGHT\"    }  ],  [    {      \"id\": 3,      \"type\": \"swipe\",      \"attack\": 18221,      \"loop\": true,      \"loopStart\": 18221,      \"target\": 23871,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.5526380670611439,          \"y\": 0.47041420118343197,          \"width\": 0.7368959566074951,          \"height\": 0.4502958579881657        }      ],      \"mandatory\": true,      \"swipeDirection\": \"UP\"    }  ],  [    {      \"id\": 4,      \"type\": \"swipe\",      \"attack\": 29573,      \"loop\": true,      \"loopStart\": 29573,      \"target\": 35156,      \"fullscreen\": false,      \"shapes\": [        {          \"type\": \"square\",          \"x\": 0.6737056213017751,          \"y\": 0.5443786982248521,          \"width\": 0.5631903353057199,          \"height\": 0.491715976331361        }      ],      \"mandatory\": true,      \"swipeDirection\": \"DOWN\"    }  ]];      window.showUserGuide = false;      window.userGuideUrl = 'undefined';      window.userGuidePosition = {};      window.installAttributes = {\"x\":0.15470238692207408,\"y\":0.8612141878113195,\"width\":0.4054893914574488};      window.showFloatingMenu = false;      window.videoOrientation = 0;      window.disableUserFeedback = true;      window.sdk = '{\"is_landscape\":false,\"video\":{\"url\":\"https://adcdn.zplayads.com/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/1556253780054.html\",\"video_start_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_ended_playing_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"video_did_fail_loading_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_did_fail_loading&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"present_sdk_trackers\":[],\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"show_install_button_countdown\":1,\"show_close_button_countdown\":15,\"force_close_button\":-1},\"landing_page\":{\"url\":\"https://pa-cloud.zplayads.com/alfred/static/2018/11/29/BA37D276-1A04-665C-C759-D6A65576DD6C.html\",\"show_replay_button\":0,\"landing_page_presented_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"landing_page_dismissed_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"click_to_action\":{\"action\":\"\",\"url\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"itunes_id\":0,\"target_url\":\"https://play.google.com/store/apps/details?id=com.zplay.beatracer\",\"click_trackers\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&redirect_to=https%3A%2F%2Fapp.appsflyer.com%2Fcom.zplay.beatracer%3Fpid%3Dzplayads%26c%3Dplayable1&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"]}},\"interval\":{\"default\":30,\"no_content\":60},\"tracker\":{\"download_start\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"download_end\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\",\"force_close\":[\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"],\"close_url\":\"\",\"behavior_trajectory\":\"https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=3FBEFA05-3A8B-2122-24C7-A87D0BC9FEEC&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=9D7833A2-B939-16F0-A36C-C4F06518B8A0&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bj79glmtfiljm682p630&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=behavior_trajectory&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0\"}}';      window.detached_install_url = '';      window.hasEndCard = true;      window.campaignType = 'ZPLAY';      window.endCardSettings = {  \"endCardType\": \"atmos\",  \"customEndCardUrl\": null,  \"loopStart\": 0,  \"hasRestartButton\": true,  \"hasCustomRestartShape\": true,  \"restartShape\": {    \"type\": \"circle\",    \"x\": 0.06836785009861929,    \"y\": 0.03550295857988164,    \"radius\": 0.06314102564102564  },  \"restartTapDirection\": \"1\",  \"installTapDirection\": \"1\",  \"installShape\": {    \"type\": \"square\",    \"x\": 0.5,    \"y\": 0.40236686390532544,    \"width\": 0.8632273175542406,    \"height\": 0.4331360946745562  }};      window.useFixRotation = false;    </script>    <style>      body {        background: black;      }      #rotatedContainer, #loadingImage {        display: none;      }      #loadingImage {        width: 100%;        height: 100%;        position: absolute;        top: 0;        left: 0;        right: 0;        bottom: 0;        filter: blur(4px);        z-index: 1;        pointer-events: none;      }      #loader-blur {        filter: blur(1.5rem);      }      #loader {        width: 50px;        height: 50px;        border-radius: 100%;        position: fixed;        top: 50%;        left: 50%;        z-index: 99;      }      #loader:before, #loader:after {        content: \"\";        position: absolute;        top: -35px;        left: -35px;        width: 100%;        height: 100%;        border-radius: 100%;        border: 10px solid transparent;        border-top-color: #6f9dec;      }      #loader:before {        z-index: 100;        animation: spin 1s infinite;      }      #loader:after {        border: 10px solid #ccc;      }      @keyframes spin {        0% {          -webkit-transform: rotate(0deg);          -ms-transform: rotate(0deg);          -o-transform: rotate(0deg);          transform: rotate(0deg);        }        100% {          -webkit-transform: rotate(360deg);          -ms-transform: rotate(360deg);          -o-transform: rotate(360deg);          transform: rotate(360deg);        }      }      #atmosLogo {        position: absolute;        bottom: 4px;        left: 4px;        width: 150px;      }    </style>  </head>  <body>    <div id=\"mainContainer\">    <div id=\"loader\"></div>      <img id=\"loadingImage\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/load.jpg\" />      <div id=\"rotatedContainer\">        <img id=\"closeButton\" src=\"https://adcdn.zplayads.com/assets/images/x_button.png\"/>        <img id=\"restartButton\" src=\"https://adcdn.zplayads.com/assets/images/restart.png\"/>        <img id=\"muteButton\" src=\"\" />        <img id=\"atmosLogo\" src=\"https://adcdn.zplayads.com/assets/brand-logo.png\" />        <img id=\"installButton\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/downloadImage.png?key=547\" />        <video id=\"atmosPlayer\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/transcoded_video_1500kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/load.jpg\" autoplay></video>        <audio id=\"bgMusicPlayer\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/bgMusic.mp3?key=358\" type=\"audio/mpeg\" loop></audio>        <video id=\"atmosPlayerEndCard\" webkit-playsinline playsinline muted preload=\"auto\" src=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/transcoded_end_card_video_1000kbps.mp4\" poster=\"https://adcdn.zplayads.com/assets/prod/cfbcaa80-6755-11e9-9db3-2f65b24f683c/end_card_load.jpg\" style=\"z-index: -10;\"></video>        <canvas id=\"gestureDetector\"></canvas>        <canvas id=\"userFeedback\"></canvas>      </div>    </div>    <script src=\"https://adcdn.zplayads.com/engine/prod/3.2.0/atmos.min.js\"></script>  </body></html>"
        }
    ]
}
```

#### 视频物料请求

任何一种广告位类型都可以请求视频对象，以下示例代码以插屏广告位为例。

##### VAST协议请求示例
```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "5C5419C7-A2DE-88BC-A311-C3E7A646F6AF",
    "app_name": "Android-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "Android",
    "manufacturer": "Samsung",
    "brand": "Samsung",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "28b92b0dde49cff7190841686960c6bc",
    "imei": "6cd5c276d3f6ce4205dde5b1bf913361",
    "android_id": "adf3b4675742e11a73db503d1273d860",
    "android_adid": "600c8c48-afca-42b8-89e5-4612c086c3cc",
    "oaid": "fe8061aa-1079-35d2-a218-c4aa739f7845",
    "idfa": "",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "Android",
    "os_version": "8.0.0",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
    "video":{
    "mimes":["mp4"],
    "minduration":"5",
    "maxduration":"30",
    "protocols":[3,6],
    "w": "900",
    "h": "1600",
    "startdelay":-1,
    "linearity":1,
    "minbitrate":100,
    "maxbitrate":10000,
    "pos":8
     },
      "unit_type": 1,
      "ad_unit_id": "19393189-C4EB-3886-60B9-13B39407064E"
    }
  ]
}
```

##### VAST协议返回示例
```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "476FC7D0-C133-42F5-ED04-20F8C2BF5882",
            "ad_unit_id": "19393189-C4EB-3886-60B9-13B39407064E",
            "app_bundle": "com.zplay.beatracer",
            "store_bundle": "com.android.vending",
            "target_url": "https://play.google.com/store/apps/details?id=com.zplay.beatracer",
            "target_url_type": 6,
            "adm": "<VAST version=\"3\"><Ad id=\"476FC7D0-C133-42F5-ED04-20F8C2BF5882\"><InLine><AdSystem version=\"1.0\"><![CDATA[atmosplay]]></AdSystem><AdTitle><![CDATA[Android-节奏超跑-测试专用-广告1-插屏]]></AdTitle><Impression><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Impression><Creatives><Creative id=\"E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C\"><Linear><Duration>00:00:00</Duration><TrackingEvents><Tracking event=\"complete\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"pause\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_paused&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"resume\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_resumed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"closeLinear\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking><Tracking event=\"skip\"><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=force_close&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></Tracking></TrackingEvents><VideoClicks><ClickThrough><![CDATA[https://play.google.com/store/apps/details?id=com.zplay.beatracer]]></ClickThrough><ClickTracking><![CDATA[https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bililb4rs363vsogp9l0&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0]]></ClickTracking><ClickTracking><![CDATA[https://app.appsflyer.com/com.zplay.beatracer?pid=zplayads&c=playable1]]></ClickTracking></VideoClicks><MediaFiles><MediaFile delivery=\"streaming\" type=\"mp4\" bitrate=\"954\" width=\"720\" height=\"1280\"><![CDATA[https://adcdn.zplayads.com/alfred/static/2019/04/08/E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C20190408183827.mp4]]></MediaFile></MediaFiles></Linear></Creative></Creatives><Description></Description><Survey></Survey></InLine></Ad></VAST>"
        }
    ]
}
```

##### 非VAST协议请求示例
```json
{
  "version": "1.1",
  "developer_token": "D0C85086-DC66-433E-9304-49EAB171D008",
  "need_https": 1,
  "support_function":2,
  "app": {
    "app_id": "5C5419C7-A2DE-88BC-A311-C3E7A646F6AF",
    "app_name": "Android-demo",
    "bundle_id": "com.playableads.demo",
    "version": "1.0",
    "cat": ""
  },
  "device": {
    "model": "Android",
    "manufacturer": "Samsung",
    "brand": "Samsung",
    "plmn": "46001",
    "device_type": "phone",
    "dnt": 1,
    "connection_type": "wifi",
    "carrier": "China Mobile",
    "orientation": 0,
    "mac": "28b92b0dde49cff7190841686960c6bc",
    "imei": "6cd5c276d3f6ce4205dde5b1bf913361",
    "android_id": "adf3b4675742e11a73db503d1273d860",
    "android_adid": "600c8c48-afca-42b8-89e5-4612c086c3cc",
    "oaid": "fe8061aa-1079-35d2-a218-c4aa739f7845",
    "idfa": "",
    "idfv": "",
    "openudid": "",
    "language": "zh-Hans-CN",
    "os_type": "Android",
    "os_version": "8.0.0",
    "screen": {
      "width": 667,
      "height": 375,
      "dpi": 219,
      "pxratio": 2
    },
    "geo": {
      "lat": 34.567,
      "lon": 107.67,
      "horizontal_accu": 45,
      "vertical_accu": 56
    }
  },
"user": {
    "id": "34ddd",
    "gender": "M",
    "age": 34,
    "keywords": ["auto", "cosmetics", "perfume"]
  },
  "ads": [
    {
    "video":{
    "mimes":["mp4"],
    "minduration":"5",
    "maxduration":"30",
    "w": "900",
    "h": "1600",
    "startdelay":-1,
    "linearity":1,
    "minbitrate":100,
    "maxbitrate":10000,
    "pos":8
     },
      "unit_type": 1,
      "ad_unit_id": "19393189-C4EB-3886-60B9-13B39407064E"
    }
  ]
}
```

##### 非VAST协议返回示例
```json
{
    "result": 0,
    "msg": "",
    "ads": [
        {
            "id": "476FC7D0-C133-42F5-ED04-20F8C2BF5882",
            "ad_unit_id": "19393189-C4EB-3886-60B9-13B39407064E",
            "app_bundle": "com.zplay.beatracer",
            "store_bundle": "com.android.vending",
            "target_url": "https://play.google.com/store/apps/details?id=com.zplay.beatracer",
            "target_url_type": 6,
            "video": {
                "video_url": "https://adcdn.zplayads.com/alfred/static/2019/04/08/E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C20190408183827.mp4",
                "end_card": "https://pa-cloud.zplayads.com/alfred/static/2019/04/03/9BCA59A7-9BAF-55FE-879F-0781883F3905.html",
                "mimes": "mp4",
                "bitrate": 954,
                "download_start_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_start&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "download_ended_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=download_end&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "start_playing_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_start_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "pause_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_paused&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "resume_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_resumed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "end_playing_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=video_ended_playing&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "end_card_displayed_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_presented&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ],
                "video_click_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_video_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0",
                    "https://app.appsflyer.com/com.zplay.beatracer?pid=zplayads&c=playable1"
                ],
                "end_card_click_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=click_from_landing_page&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0",
                    "https://app.appsflyer.com/com.zplay.beatracer?pid=zplayads&c=playable1"
                ],
                "close_tracker": [
                    "https://pa-engine.zplayads.com/v1/tracking?ab_test_id=A011A3BB-9316-08D6-06DD-3DADFA6B73C1&ab_test_object_group_id=default&ad_id=476FC7D0-C133-42F5-ED04-20F8C2BF5882&ad_unit_id=19393189-C4EB-3886-60B9-13B39407064E&android_adid=600c8c48-afca-42b8-89e5-4612c086c3cc&android_id=adf3b4675742e11a73db503d1273d860&app_id=5C5419C7-A2DE-88BC-A311-C3E7A646F6AF&brand=Samsung&bundle_id=com.playableads.demo&channel_id=&channel_share_rate=0&city=%E5%8D%97%E4%BA%AC%E5%B8%82&client_id=73AB1CDF-009E-130C-4A15-94901D3470DE&country=CN&creatives_id=E7FF9202-AAE6-77D0-B46F-056A1E1ACB5C&developer_share_rate=70&device_model=Android&device_type=phone&engine_events=&height=0&imei=6cd5c276d3f6ce4205dde5b1bf913361&industry_id=&integrated_type=API&last_status=0&network_connection_type=wifi&os=Android&os_version=8.0.0&pay_by=cpi&pay_event=install&predictive_cpm_cipher=351d6fbfdfc8bb29&predictive_cpm_usd_cipher=213ee1d6dd84207c&predictive_cpms=2c3e8d08ad73a635&progress=%7Bprogress%7D&promotion_app_id=DF8DD39A-F5B2-A311-BCFE-C6E3CFB75E76&region=%E6%B1%9F%E8%8B%8F%E7%9C%81&request_id=bim1pnetfilhsq680r50&settlement_price_cny=213ee1d6dd84207c&settlement_price_usd=213ee1d6dd84207c&tracking_type=landing_page_dismissed&unit_price_cny=fdf3d2a3b2e6380d77e13edb&unit_price_usd=9c2e72a6e1ed08e69b93e5fa&unit_prices=9ee430e529c158be513616b80a0155613db863678ad3b77dc7b817d5913cd4205f940ff0e477ca83286cc2ef8aa461e5391c72823bb1c0f3e1462f0edc20e8f9d1186704e988f68f&width=0"
                ]
            }
        }
    ]
}
```