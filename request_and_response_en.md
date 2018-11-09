# API OF INTEGRATION

- [API OF INTEGRATION](#api-of-integration)
    - [Introduction of document](#introduction-of-document)
    - [Changelog](#changelog)
    - [Preparation before integration](#preparation-before-integration)
    - [Steps of getting ads](#steps-of-getting-ads)
    - [Instruction](#instruction)
        - [Request URL](#request-url)
        - [Communication Mode and Encoding](#communication-mode-and-encoding)
        - [Request Header](#request-header)
        - [Request](#request)
            - [APP Information](#app-information)
            - [Device Information](#device-information)
                - [Screen Information](#screen-information)
                - [Geo Information](#geo-information)
            - [User Information](#user-information)
            - [Ad Information](#ad-information)
                - [Native Information](#native-information)
                    - [Asset Information](#asset-information)
        - [Response Information](#response-information)
            - [Ad Information](#ad-information-1)
                - [Native Information](#native-information-1)
                - [Asset Information](#asset-information-1)
                    - [Image Information](#image-information)
                    - [Title Information](#title-information)
                    - [Data Information](#data-information)
                - [Link Information](#link-information)
            - [ATTACHMENT](#attachment)
                - [CATEGORY](#category)

## Introduction of document

This document is only for developers who integrate with ZPLAY Ads using the API.

## Changelog

| Version | Modifier  | Time       | Description |
| ------- | --------- | ---------- | ----------- |
| v1.0    | ZPALY Ads | 2018.09.20 | Creat       |

## Preparation before integration

Please get 'Account ID' and 'Token' from your account manager.

## Steps of getting ads

1. When the user visit the APP of developer, developer should send a request to ZPLAY Ads.
2. ZPLAY Ads return a response to developer, both request and response should obey the format agreed by this document.
3. Developer renders the ads according specification of this document

## Instruction

### Request URL

When you send a request, send a HTTP POST to the following address: pa-engine.zplayads.com/v1/api/ads

### Communication Mode and Encoding

Communication protocol: HTTP
Method: POST
Data format: UTF-8

### Request Header

| http header information | instruction                                                                                                                                                                                                                                 |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| X-Forwarded-For         | Include the real request address of the client, e.g. “8.8.8.8”. If integrated via server, please pass client address because server address will be blocked and regarded as fraud traffic.                                                  |
| User-Agent              | User Agent of mobile device，e.g. “Mozilla/5.0 (iPad; CPU OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3”. Non-real User-Agent from server will be regarded as problematic traffic. |

### Request

| Parameter       | Type               | mandatory | Description                                                                                                                            |
| --------------- | ------------------ | --------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| ver             | string             | Y         | Protocol version, current version is 1.0                                                                                               |
| developer_token | string             | Y         | Developer token, offered by ZPLAY Ads account manager                                                                                  |
| need_https      | int                | N         | For material's link or tracking url link, whether the prefix is https. 0 as default. 0: don’t need https, 1: need https for all links. |
| app             | object             | Y         | APP information                                                                                                                        |
| device          | object             | Y         | Device information                                                                                                                     |
| user            | object             | N         | User information                                                                                                                       |
| ads             | ad array of object | Y         | Ad information                                                                                                                         |

#### APP Information

| Parameter | Type   | mandatory | Description                                                                                                                                                                                                            |
| --------- | ------ | --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| app_id    | string | Y         | APP ID, generated by ZPLAYAds after you registered the app on [ZPLAY Ads](https://www.zplayads.com)                                                                                                                    |
| app_name  | string | N         | APP name, please make sure this value is same with the name that you have registered on[ZPLAY Ads 平台](https://www.zplayads.com) in advance                                                                           |
| bundle_id | string | Y         | PackageName in Android，such as "com.zplayads.demo"；iTunes ID in iOS, such as "834878585"                                                                                                                             |
| version   | string | Y         | application version                                                                                                                                                                                                    |
| cat       | string | N         | application category, such as"Action"，category refer to [CATEGORY](#CATEGORY). please make sure this value is same with the category that you have registered on[ZPLAY Ads 平台](https://www.zplayads.com) in advance |

#### Device Information

| Parameter       | Type    | mandatory | Description                                                                                                                                                                                                                                                                                                                                                                              |
| --------------- | ------- | --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| model           | string  | Y         | Device model                                                                                                                                                                                                                                                                                                                                                                             |
| manufacturer    | string  | N         | Manufacturer, such as "Samsung"                                                                                                                                                                                                                                                                                                                                                          |
| brand           | string  | N         | Brand, such as "MI4"                                                                                                                                                                                                                                                                                                                                                                     |
| plmn            | string  | Y         | Public land mobile network (PLMN), as defined in telecommunications regulation, is a network that is established and operated by an administration or by a recognized operating agency (ROA) for the specific purpose of providing land mobile telecommunications services to the public, such as "46000"                                                                                |
| device_type     | string  | Y         | Device type, "phone", "tablet"                                                                                                                                                                                                                                                                                                                                                           |
| adt             | boolean | N         | Whether to allow targeted user by tracking user behavior, 0: not allowed, 1: allowed, default is 1                                                                                                                                                                                                                                                                                       |
| connection_type | string  | Y         | Connection type, empty means unknown, the value is wifi, 4g, 3g, 2g, ethernet，cell_unknown                                                                                                                                                                                                                                                                                              |
| carrier         | int     | Y         | Carrier, 0:China Mobile，1:Telecom，3:Unicom, 4:unknown                                                                                                                                                                                                                                                                                                                                  |
| orientation     | int     | N         | Device orientation, 0: landscape, 1: portrait                                                                                                                                                                                                                                                                                                                                            |
| mac             | string  | N         | Media access control address, is a unique identifier assigned to a network interface controller (NIC) for communications at the data link layer of a network segment. MAC addresses are used as a network address for most IEEE 802 network technologies, including Ethernet and Wi-Fi. In this context, MAC addresses are used in the medium access control protocol sublayer. Md5 Hash |
| imei            | string  | N         | International Mobile Equipment Identity, is a number, usually unique, to identify 3GPP and iDEN mobile phones, as well as some satellite phones. (sending meid(mobile equipment identifier) if the mobile is CDMA2000). Md5 Hash                                                                                                                                                         |
| android_id      | string  | N         | Android ID is an unique ID to each device. It is used to identify your device for market downloads, Md5 Hash, no value in Android device will affect ad fill.                                                                                                                                                                                                                            |
| android_adid    | string  | N         | AAID(Google Advertising ID)                                                                                                                                                                                                                                                                                                                                                              |
| idfa            | string  | Y         | IDFA( Identifier for Advertising)                                                                                                                                                                                                                                                                                                                                                        |
| idfv            | string  | N         | identifierForVendor, please view [more info](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor)                                                                                                                                                                                                                                                       |
| openudid        | string  | N         | openudid                                                                                                                                                                                                                                                                                                                                                                                 |
| language        | string  | Y         | Device language                                                                                                                                                                                                                                                                                                                                                                          |
| os_type         | string  | Y         | Operation system, "iOS", " Android"                                                                                                                                                                                                                                                                                                                                                      |
| os_version      | string  | Y         | Operation system version, such as 11.4.1，12.0，7.1.0. Please note: the main version of iOS are limited in 9.x，10.x，11.x，12.x；the main version of Android are limited in 5.x，6.x，7.x，8.x                                                                                                                                                                                          |
| screen          | object  | Y         | Device screen info                                                                                                                                                                                                                                                                                                                                                                       |
| geo             | object  | N         | Device geo info                                                                                                                                                                                                                                                                                                                                                                          |

##### Screen Information

| Parameter | Type  | Mandatory | Description                                                                    |
| --------- | ----- | --------- | ------------------------------------------------------------------------------ |
| width     | int   | Y         | Landscape resolution, unit: pixel                                              |
| height    | int   | Y         | Portrait resolution, unit: pixel                                               |
| dpi       | int   | Y         | Pixel density，unit: pixel numbers per inch                                    |
| pxratio   | float | N         | Physical pixel density, e.g. 1 on iPhone 3, 2 on iPhone 4, 3 on iPhone 6s Plus |

##### Geo Information

| Parameter       | Type   | Mandatory | Description                    |
| --------------- | ------ | --------- | ------------------------------ |
| lat             | double | Y         | Latitude                       |
| lon             | double | Y         | Longitude                      |
| horizontal_accu | int    | N         | Horizon accurate, unit: meter  |
| vertical_accu   | int    | N         | Vertical accurate, unit: meter |

#### User Information

| Parameter | Type   | Mandatory | Description                                      |
| --------- | ------ | --------- | ------------------------------------------------ |
| id        | string | N         | User id                                          |
| gender    | int    | N         | Gender, 0: female, 1: male, 2: other, 3: unknown |
| age       | int    | N         | Age                                              |
| keywords  | array  | N         | Keyword interested by user                       |

#### Ad Information

| Parameter  | Type   | Mandatory | Description                                                                                                                        |
| ---------- | ------ | --------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| unit_type  | int    | Y         | ad unit type, 0: banner, 1: interstitial, 2: splash, 3: native, 4: rewarded video, unit_type should be same with your ad unit type |
| ad_unit_id | string | Y         | Ad unit id, generated by ZPLAYAds after you registered your ad unit on [ZPLAY Ads](https://www.zplayads.com)                       |
| native     | object | N         | Native information, it's mandatory when unit_type is 3; it should not fill when unit_type isn't 3                                  |

##### Native Information

| Parameter | Type           | Mandatory | Description                                                                                                                                               |
| --------- | -------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| layout    | int            | N         | Native types，1: content wall, 2: app wall, 3: news stream， 4: chat list，5:scroll ads，6:content stream，7:matrix, only content stream is supported now |
| assets    | array of asset | Y         | Native assets，currently there’re five elements: Title(data), Icon(img), Large image (img), Description (data) and score(data)                            |

###### Asset Information

| Parameter | Type   | Mandatory | Description                                                             |
| --------- | ------ | --------- | ----------------------------------------------------------------------- |
| id        | int    | Y         | Element id                                                              |
| required  | int    | N         | Whether the element is required, 1: required, 0: optional, default is 0 |
| title     | object | N         | Title element, content is text                                          |
| image     | object | N         | Title element, content is image                                         |
| data      | object | N         | Other element data                                                      |

> One asset only includes one element of image，title and data

**Image Information**

| Parameter | Type | Mandatory | Description                                                                                                                                                                              |
| --------- | ---- | --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type      | int  | Y         | Image element type, 1: icon, 2: Logo, 3: main picture, 4: "play game without downloading" button, when user click the button, please load playable_ads_html in response.ads into webview |
| width     | int  | Y         | Image width，unit: pixel.                                                                                                                                                                |
| height    | int  | Y         | Image height，unit: pixel.                                                                                                                                                               |

**Title Information**

| Parameter | Type | Mandatory | Description     |
| --------- | ---- | --------- | --------------- |
| len       | int  | Y         | Length of title |

**Data Information**

| Parameter | Type | Mandatory | Description                                                                                                                                                                                                                                                                                                                                                                                              |
| --------- | ---- | --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type      | int  | Y         | Type of data, 1: Sponsor name, should include brand name, 2: description, 3: score, 4: number of likes, 5: number of downloads, 6: price of product, 7: price of sales, always display with price of product together and show user the discount, 8: phone number, 9: address, 10: second description, 11: link that show to user, 12: click-to-action button, 1001: video URL, 1002: number of comments |
| len       | int  | Y         | Length of data                                                                                                                                                                                                                                                                                                                                                                                           |

### Response Information

| Parameter | Type             | Mandatory | Description                                                                 |
| --------- | ---------------- | --------- | --------------------------------------------------------------------------- |
| result    | int              | Y         | Response result, 0: success, less than 0: fail                              |
| msg       | string           | N         | The reason for failure if response result is fail, such as "Internet error" |
| ads       | array of objects | N         | No data if response result is fail                                          |
| cur       | string           | N         | Ad currency, such as "CNY" or "USD", default is "CNY"                       |

#### Ad Information

| Parameter         | Type   | Mandatory | Description                                                                                                                                                                                                                        |
| ----------------- | ------ | --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                | string | Y         | Ad id                                                                                                                                                                                                                              |
| ad_unit_id        | string | Y         | Ad unit id, it's the same with ad_unit_id in request                                                                                                                                                                               |
| app_bundle        | string | Y         | APP packageName for Android, Bundle ID for iOS, please listen to install event, open build-in APP Store or Google Play                                                                                                             |
| playable_ads_html | string | Y         | Playable ad HTML snippet, make sure to load it with in-app webview                                                                                                                                                                 |
| target_url        | string | Y         | Target url to download APP, which will jump to when user click ad                                                                                                                                                                  |
| target_url_type   | int    | Y         | Type of actions when user click ad, 1: open the url within webview in-app, 2: open the url within system browser, 3: open map, 4: open dial, 5: play video, 6: download App, make sure to open App Store or Google Play in the app |
| price             | float  | N         | Ad price, empty means 0, unit: cent                                                                                                                                                                                                |
| native            | object | N         | Native object, it will return native object if unit_type is native                                                                                                                                                                 |

##### Native Information

| Parameter   | Type           | Mandatory | Description                                                                                                                             |
| ----------- | -------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| assets      | array of asset | Y         | Native ad element list, five type elements supported currently, tile (data), icon (img), picture (img), description (data), score(data) |
| imp_tracker | array          | N         | Impression tracking URL array, a 1-pixel picture need to be returned for tracking URL                                                   |
| link        | object         | Y         | Target link, this is a default link object of native ads. Use this object when link object does not included in assets                  |

##### Asset Information

| Parameter | Type   | Mandatory | Description                                                                   |
| --------- | ------ | --------- | ----------------------------------------------------------------------------- |
| id        | int    | Y         | Ad element ID                                                                 |
| required  | int    | N         | Whether the element must be displayed, 1: required, 0: optional, default is 0 |
| title     | object | N         | Title element, content is text                                                |
| image     | object | N         | Image element, content is picture                                             |
| data      | object | N         | Other element data                                                            |
| link      | object | N         | Target link to download APP                                                   |

###### Image Information

| Parameter | Type   | Mandatory | Description               |
| --------- | ------ | --------- | ------------------------- |
| url       | string | Y         | Image url                 |
| width     | int    | N         | Image width，unit: pixel  |
| height    | int    | N         | Image height，unit: pixel |

###### Title Information

| Parameter | Type   | Mandatory | Description   |
| --------- | ------ | --------- | ------------- |
| text      | string | Y         | Title content |

###### Data Information

| Parameter | Type   | Mandatory | Description  |
| --------- | ------ | --------- | ------------ |
| label     | string | N         | Data name    |
| value     | string | Y         | Data content |

##### Link Information

| Parameter       | Type   | Mandatory | Description                                                                                                                                                                                                                        |
| --------------- | ------ | --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| target_url      | string | Y         | Target link to download APP                                                                                                                                                                                                        |
| app_bundle      | string | Y         | APP packageName for Android, Bundle ID for iOS, please listen to install event, open build-in APP Store or Google Play, for install event, refer to [Check_list](check_list_en.md)                                                 |
| click_tracker   | array  | N         | click tracker                                                                                                                                                                                                                      |
| target_url_type | int    | Y         | Type of actions when user click ad, 1: open the url within webview in-app, 2: open the url within system browser, 3: open map, 4: open dial, 5: play video, 6: download App, make sure to open App Store or Google Play in the app |

#### ATTACHMENT

##### CATEGORY

| 应用类别     | Category      |
| ------------ | ------------- |
| 动作游戏     | Action        |
| 益智解谜     | Puzzle        |
| 卡牌游戏     | Card          |
| 休闲         | Casual        |
| 冒险游戏     | Adventure     |
| 角色扮演游戏 | Role-playing  |
| 策略游戏     | Strategy game |
| 街机游戏     | Arcade        |
| 儿童         | Kids          |
| 竞速游戏     | Racing        |
| 聚会游戏     | Family        |
| 模拟游戏     | Simulation    |
| 体育         | Sports        |
| 文字游戏     | Word          |
| 问答游戏     | Trivia        |
| 音乐         | Music         |
| 桌面游戏     | Board         |
| 赌场         | Casino        |
| 教育         | Education     |
