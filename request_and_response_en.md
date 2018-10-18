## API OF INTEGRATION

- [API 对接文档协议](#api-%E5%AF%B9%E6%8E%A5%E6%96%87%E6%A1%A3%E5%8D%8F%E8%AE%AE)
- [文档说明](#%E6%96%87%E6%A1%A3%E8%AF%B4%E6%98%8E)
- [文档更新记录](#%E6%96%87%E6%A1%A3%E6%9B%B4%E6%96%B0%E8%AE%B0%E5%BD%95)
- [接入准备](#%E6%8E%A5%E5%85%A5%E5%87%86%E5%A4%87)
- [广告获取流程](#%E5%B9%BF%E5%91%8A%E8%8E%B7%E5%8F%96%E6%B5%81%E7%A8%8B)
- [接入说明](#%E6%8E%A5%E5%85%A5%E8%AF%B4%E6%98%8E)
    - [请求 URL](#%E8%AF%B7%E6%B1%82-url)
    - [通信方式及编码](#%E9%80%9A%E4%BF%A1%E6%96%B9%E5%BC%8F%E5%8F%8A%E7%BC%96%E7%A0%81)
    - [请求头](#%E8%AF%B7%E6%B1%82%E5%A4%B4)
    - [Request 信息](#request-%E4%BF%A1%E6%81%AF)
        - [app 对象信息](#app-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
        - [Device 对象信息](#device-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
            - [Screen 对象信息](#screen-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
            - [Geo 对象信息](#geo-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
        - [User 对象信息](#user-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
        - [Ad 对象信息](#ad-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
            - [Native 对象信息](#native-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
                - [Asset 对象信息](#asset-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
    - [Response 返回信息](#response-%E8%BF%94%E5%9B%9E%E4%BF%A1%E6%81%AF)
        - [Ad 对象信息](#ad-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
            - [Native 对象信息](#native-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
            - [Asset 对象信息](#asset-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
                - [Image 对象信息](#image-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
                - [Title 对象信息](#title-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
                - [Data 对象信息](#data-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
            - [Link 对象信息](#link-%E5%AF%B9%E8%B1%A1%E4%BF%A1%E6%81%AF)
        - [附件](#%E9%99%84%E4%BB%B6)
            - [应用类别](#%E5%BA%94%E7%94%A8%E7%B1%BB%E5%88%AB)

## Introduction of document

This document is only for developers who use the API with ZPLAY Ads.

## Changelog

| Version | Modifier | Time       | Description |
| ---- | ---- | ---------- | ---- |
| v0.1 | niu  | 2018.09.20 | Creat |

## Preparation before integration

Please get 'Account ID' and 'Token' from your account manager.

## Steps of request

1. When the user visit the APP of developer, developer should send a request to ZPLAY Ads.
2. ZPLAY Ads return a response to developer, both request and response should obey the format agreed by this document.
3. Developer renders the ads according specification of this document

## Instruction

### Request URL

When you send a request, send a HTTP POST to the following address: pa-engine.zplayads.com/v1/api/ads

### Communication Mode and Encoding

Communication protocal: HTTP
Method: POST
Data format: UTF-8

### Request Header

| http header information  | instrction                                                                                                                                                                                                              |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| X-Forwarded-For | Include the real request address of the client, e.g. “8.8.8.8”. If integrated via server, please pass client address because server address will be blocked and regarded as fraud.                                                                             |
| User-Agent      | User Agent of mobile device，e.g. “Mozilla/5.0 (iPad; CPU OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3”. Non-real User-Agent from server will be regarded as problematic traffic. |

### Request 

| Parameter   | Type        | Mendatory | Description                                                                                                                                 |
| ---------- | ----------- | ---- | ------------------------------------------------------------------------------------------------------------------------------------ |
| ver        | string      | Y   | Protocal version,                                                                                                              |
| developer_token  | string      | Y   | Developer token, offered by ZPLAY Ads account nameger                                                                                          |
| need_https | int         | N   | For material's link or tracking url link, whether the prefix is https. 0 as default. 0: don’t need https, 1: need https for all materials and links. |
| app        | object        | Y   | APP information                                                                                                                         |
| device     | object        | Y   | Device information                                                                                                                             |
| user       | object        | N   | User information                                                                                                                             |
| ads        | ad rray of object | Y   | Ad information                                                                                                                         |

#### APP Information

| Parameter | Type   | Mendatory | Description                                                                                                                                 |
| -------- | ------ | ---- | ------------------------------------------------------------------------------------------------------------------------------------ |
| app_id   | string | Y   | APP ID, generted by ZPLAYAds after you registered the app on ZPLAY Ads[https://www.zplayads.com](https://www.zplayads.com) |
| app_name     | string | Y   | APP name                                                                                                                             |
| bundle_id   | string | Y   | PackageName in Android；iTunes ID in iOS, such as "com.zplayads.demo"                                                                                                               |
| version      | string | Y   | application version                                                                                                                       |
| cat      | string | N   | application category, such as"Action"，category refer to [CATEGORY](# ATTACHMENT)                                                                                  |

#### Device Information

| Parameter        | Type    | Mendatory | Description                                                                  |
| --------------- | ------- | ---- | --------------------------------------------------------------------- |
| model           | string  | Y   | Device model                                                              |
| manufacturer    | string  | N   |Manufactor, such as "Samsung"                                             |
| brand           | string  | N   | Brand, such as "MI4"                                                 |
| plmn            | string  | Y   | Public land mobile network (PLMN), as defined in telecommunications regulation, is a network that is established and operated by an administration or by a recognized operating agency (ROA) for the specific purpose of providing land mobile telecommunications services to the public, such as "46000"                                                        |
| device_type     | string  | Y   | Device type, "phone", "tablet"                                           |
| adt             | boolean | N   | Whether to allow targeted usersy by tracking user behavior, 0: not allowed, 1: allowed, default is 1    |
| connection_type | string  | Y   | Connection type, empty means unknown, the value is wifi, 4g, 3g, 2g, ethernet，cell_unknown |
| carrier         | int     | Y   | Carrier, 0:China Mobile，1:Telecom，3:Unicom, 4:unknown                         |
| orientation     | int     | N   | Device orientation, 0: landscape, 1: portrait                                        |
| mac             | string  | N   | Media access control address, is a unique identifier assigned to a network interface controller (NIC) for communications at the data link layer of a network segment. MAC addresses are used as a network address for most IEEE 802 network technologies, including Ethernet and Wi-Fi. In this context, MAC addresses are used in the medium access control protocol sublayer. Md5 Hash                                                   |
| imei            | string  | N   | International Mobile Equipment Identity, is a number, usually unique, to identify 3GPP and iDEN mobile phones, as well as some satellite phones. (sending meid(mobile equipment identifier) if the mobile is CDMA2000). Md5 Hash                                           |
| imsi            | string  | N   | International mobile subscriber identity, is used to identify the user of a cellular network and is a unique identification associated with all cellular networks. Md5 Hash                                                       |
| android_id      | string  | N   | Android ID is an unique ID to each device. It is used to identify your device for market downloads, Md5 Hash, no value in Android device will affect ad fill.               |
| android_adid    | string  | N   | AAID(Google Advertising ID)                                              |
| idfa            | string  | Y   | IDFA( Identifier for Advertising)                                                     |
| idfv            | string  | N   | identifierForVendor, please view [more info](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor)  |
| openudid        | string  | N   | openudid                                                              |
| local           | string  | N   | 设备上的本地首选项设置                                                |
| language        | string  | Y   | Device language                                                              |
| os_type         | string  | Y   | Operation system, "iOS", " Android", "WP"(windows phone)             |
| os_version      | string  | Y   | Operation system,such as 11.4.1，12.0，7.1.0                                |
| screen          | object    | Y   | Device screen info                                                        |
| geo             | object    | N   | Device geo info                                                        |

##### Screen Information

| Parameter | Type  | Mandatory | Description                                                                    |
| -------- | ----- | ---- | ----------------------------------------------------------------------- |
| width        | int   | Y   | Landscape resolution, unit: pixel                                                  |
| height        | int   | Y   | Portrait resolution, unit: pixel                                                  |
| dpi      | int   | Y   | Pixel density，unit: pixel numbers per inch                                        |
| pxratio  | float | N   | Physical pixel density, e.g. 1 on iPhone 3, 2 on iPhone 4, 3 on iPhone 6s Plus |

##### Geo Information

| Parameter        | Type   | Mandatory | Description                   |
| --------------- | ------ | ---- | ---------------------- |
| lat             | double | Y   | Latitude                   |
| lon             | double | Y   | Lonitude                   |
| horizontal_accu | int    | N   | Horizen accurate, unit: meter |
| vertical_accu   | int    | N   | Vertiacl accurate, unit: meter |

#### User Information

| Parameter | Type   | Mandatory | Description                                 |
| -------- | ------ | ---- | ------------------------------------ |
| id       | string | N   | User id                              |
| gender   | int    | N   | Gender, 0: female, 2: other, 3: unknown |
| age      | int    | N   | Age                                 |
| keywords | array  | N   | Keyword interested by user                   |

#### Ad Information

| Parameter   | Type   | Mandatory | Description                                                                                                                              |
| ---------- | ------ | ---- | --------------------------------------------------------------------------------------------------------------------------------- |
| unit_type  | int    | Y   | Ad type, 1: interstitial, 3: native, 4: reawrded video, unit_type should be same with your ad unit type     |
| ad_unit_id | string | N   | Ad unit id, generated by ZPLAYAds after you registered your ad unit on [ZPLAY Ads](https://www.zplayads.com)  |
| native     | object   | N   | Native information                                                                                                                    |

##### Native Information

| Parameter | Type       | Mandatory | Description                                                                                                                   |
| -------- | ---------- | ---- | ---------------------------------------------------------------------------------------------------------------------- |
| layout   | int        | Y   | Native types，1: content wall, 2: app wall, 3:news stream， 4:chat list，5:scroll ads，6:content stream，7:matrix, only content stream is supported now                      |
| assets   | Arrey of asset | Y   | Native assets，currently there’re four element: Title(data), Icon(img), Large image (img), Description (data)  |

###### Asset Information

| Parameter | Type | Mandatory | Description                                         |
| -------- | ---- | ---- | -------------------------------------------- |
| id       | int  | Y   | Element id                                  |
| required | int  | N   | Whether the element is required, 1: required, 0: optional, default is 0 |
| title    | object | N   | Title element, content is text                                     |
| image      | object | N   | Title element, content is image                                     |
| data     | object | N   | Other element data                                 |

> One asset only include one element of image，title and data

**Image Information**

| Parameter | Type | Mandatory | Description                                                                                                                                                               |
| -------- | ---- | ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| type     | int  | Y   | Image element type, 1: icon, 2: Logo, 3: main picture, 4: "DOWNLOAD" button, when user click download button, please load playable_ads_html in response.ads into webview |
| width        | int  | Y   | Image width，unit: pixel.                                                                                                                                       |
| height        | int  | Y   | Image height，unit: pixel.                                                                                                                                       |

**Title Information**

| Parameter | Type | Mandatory | Description                   |
| -------- | ---- | ---- | ---------------------- |
| len      | int  | Y   | Length of title |

**Data Information**

| Parameter | Type | Mandatory | Description                                                                                                                                                                                                                                        |
| -------- | ---- | ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type     | int  | Y   | Type of data, 1: Sponsor name, should include brand name, 2: description, 3: score, 4: number of likes, 5: number of downloads, 6: price of product, 7: price of sales, always display with price of product together and show user the discount, 8: phone number, 9: address, 10: second description, 11: link that show to user, 12: click-to-action button, 1001: video URL, 1002: number of comments |
| len      | int  | Y   | Length of data                                                                                                                                                                                                                            |

### Response Information

| Parameter | Type        | Mandatory | Description                                                           |
| -------- | ----------- | ---- | -------------------------------------------------------------- |
| result   | int         | Y   | Response result, 0: success, <0: fail                             |
| msg      | string      | N   | The reason for failure if response result is fail, such as "Internet error" |
| ads      | array of objects | N   | No data if response result is fail                             |
| cur      | string      | N   | Ad currency, such as "CNY" or "USD", default is "CNY"                                  |

#### Ad Information

| Parameter          | Type   | Mandatory | Description                                                                                                                      |
| ----------------- | ------ | ---- | ------------------------------------------------------------------------------------------------------------------------- |
| id                | string | Y   | Ad id                                                                                                                   |
| ad_unit_id        | string | Y   | Ad unit id, it's the same with ad_unit_id in request                                                                                |
| app_bundle        | string | Y   | APP packageName for Android, Bundle ID for iOS, please listen to "user_did_tap_install" event, open build-in APP Store or jumpto Google Play                                                       |
| playable_ads_html | string | Y   | Playable ad HTML snippet, make sure open it with in-app webview                                                                   |
| target_url               | string | Y   | Target url to download APP, which wil jump to when user click ad |
| target_url_type         | int    | Y   | Type of data, 1: Sponsor name, should include brand name, 2: description, 3: score, 4: number of likes, 5: number of downloads, 6: price of product, 7: price of sales, always display with price of product together and show user the discount, 8: phone number, 9: address, 10: second description, 11: link that show to user, 12: click-to-action button, 1001: video URL, 1002: number of comments |
| len      | int  | Y   | Length of data   |
| price             | float  | N   | Ad price, empty means 0, unit: cent                                            |
| native            | object   | N   | Native object, it will return native object if ad type is native                                                                     |

##### Native Information

| Parameter   | Type          | Mandatory | Description                                                             |
| ---------- | -------------- | ---- | -------------------------------------------------------------------------------------------------------------- |
| assets     | array of asset  | Y   | Native ad element list, four type elements supported currently, tile (data), icon (img), picture (img), description (data) |
| imp_tracker | arrey           | N   | Impression tracker address array, a 1-pixel picture need to be returned                                                               |
| link       | object           | N   | Target link, default is link object, please use this object when link object does not included in assets                                   |

##### Asset Information

| Parameter | Type | Mandatory | Description                                              |
| -------- | ---- | ---- | ------------------------------------------------- |
| id       | int  | Y   | Ad element ID                                       |
| required | int  | N   | Whether the element must be displayed, 1: required, 0: optional, default is 0 |
| title    | object | N   | Title element, content is text                                          |
| image      | object | N   |  Image element, content is picture                                         |
| data     | object | N   | Other element data                                      |
| link     | object | N   | Target link to download APP                                     |

###### Image Information

| Parameter | Type   | Mandatory | Description                         |
| -------- | ------ | ---- | ---------------------------- |
| url      | string | Y   | Image url                |
| width    | int    | N   | Image width，unit: pixel |
| height   | int    | N   | Image height，unit: pixel |

###### Title Information

| Parameter | Type   | Mandatory | Description     |
| -------- | ------ | ---- | -------- |
| text     | string | Y   | Title content |

###### Data Information

| Prameter | Type   | Mandatory | Description     |
| -------- | ------ | ---- | -------- |
| label    | string | N   | Data name |
| value    | string | Y   | Data content |

##### Link Information

| Parameter     | Type   | Mandatory | Description                                                             |
| ------------ | ------ | ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| target_url          | string | Y   | Target link to download APP, please use app_bundle in ad information first                                                                                                                              |
| app_bundle        | string | Y   | APP packageName for Android, Bundle ID for iOS, please listen to "user_did_tap_install" event, open build-in APP Store or jumpto Google Play                                                       |
| click_tracker | array   | N   | click tracker                                                                                                                                                                    |
| target_url_type         | int    | Y   | Type of actions when user click ad, 1: open the url within webview in-app, 2: open the url within system browser, 3: open map, 4: open dial, 5: play video, 6: download App, 7: arouse App   |

#### ATTACHMENT

##### CATEGORY

| ID                                   | 应用类别     | Category      |
| ------------------------------------ | ------------ | ------------- |
| AD9C1D4C-272D-7E6B-BB64-B770A8A5B9B0 | 动作游戏     | Action        |
| AED099F1-2B7E-9A52-9F2E-D4F7CFE500AA | 益智解谜     | Puzzle        |
| 7AD7776C-20D1-7A2A-9388-0D67A44FF399 | 卡牌游戏     | Card          |
| 36FBA1A1-C5E7-D9F6-9170-9BA0DA13CBF9 | 休闲         | Casual        |
| 1CF3914A-E099-92A5-0ECF-D3C05A177253 | 冒险游戏     | Adventure     |
| 40E3C001-ADF6-A950-6E73-5DB66B0648E3 | 角色扮演游戏 | Role-playing  |
| 7DA00174-66E2-5119-6355-331049316283 | 策略游戏     | Strategy game |
| F3C58318-6A2E-223E-C3D5-5936C48196B1 | 街机游戏     | Arcade        |
| AEDADC6C-562B-751F-E137-907A605BAA6C | 儿童         | Kids          |
| 34879F45-896A-FFA9-582E-D576345F1D9A | 竞速游戏     | Racing        |
| C91C130E-3166-FB45-8951-25DC86850C12 | 聚会游戏     | Family        |
| E13A497E-BCFA-1E66-05E4-31B716765B5B | 模拟游戏     | Simulation    |
| CEDC63B5-9A57-DFD0-75CB-1289DEB7578A | 体育         | Sports        |
| 48EF79CA-B384-F7A8-736A-423E8D62A023 | 文字游戏     | Word          |
| 7F43E937-69EA-5C4A-954B-E52B10094225 | 问答游戏     | Trivia        |
| 59B07A55-A40B-0D29-BF2D-CF29AFED540E | 音乐         | Music         |
| EC5336A4-A434-BDDA-4246-6F50DA2EF63E | 桌面游戏     | Board         |
| 57728DCB-9EC5-DC08-B999-3F9DDDF66083 | 赌场         | Casino        |
| CB45DD59-EF28-EC0D-423B-2ED10F54C8D7 | 教育         | Education     |
