# 广告请求和返回示例

> 提供一个测试账号和token，让开发者可以进行接入测试

## 请求示例

```json

	{
    	"version": "1.0",
    	"developer_token": "123",
    	"need_https": 1,
    	"app": {
    		"app_id": "A650AB0D-7BFC-2A81-3066-D3170947C3DA",
    		"app_name": "app_name",
    		"bundel_name": "bundel_name",
    		"bundle_id": "bundle_id",
    		"version": "version",
    		"cat": "cat"
    	},
    	"device": {
    		"model": "model",
    		"manufacturer": "manufacturer",
    		"brand": "brand",
    		"plmn": "plmn",
    		"device_type": "device_type",
    		"adt": 1,
    		"connection_type": "wifi",
    		"carrier": 1,
    		"orientation": 0,
    		"mac": "mac",
    		"imei": "imei",
    		"imsi": "imsi",
    		"android_id": "android_id",
    		"android_ad_id": "android_ad_id",
    		"idfa": "idfa",
    		"idfv": "idfv",
    		"open_ud_id": "open_ud_id",
    		"local": "local",
    		"language": "language",
    		"os_type": "ios",
    		"os_version": "11.4.1",
    		"screen": {
    			"width": 123,
    			"height": 234,
    			"dpi": 2,
    			"pxratio": 34567
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
    		"gender": 0,
    		"age": 34,
    		"keywords": ["45", "56", "abd"]
    	},
    	"ads": [{
    		"unit_type": 1,
    		"ad_unit_id": "DC9E199C-7C0B-FBFC-7E5A-26E7B5EE6BB3",
    		"native": {
    			"layout": 1,
    			"assets": [{
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
    						"type": 2,
    						"width": 345,
    						"height": 234
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
    	}]
    }
```

## 返回示例

```json

	{
	    "Ad_Responses": [
	        {
	            "id": "19046454",
	            "place_id": "",
	            "action": 6,
	            "image_url": "http://oimageb1.ydstatic.com/image?id=-3419818951519079008&product=adpublish",
	            "w": 640,
	            "h": 960,
	            "target_url": "http://dl.hdslb.com/mobile/latest/iBiliPlayer-youdao010.apk",
	            "click_trackers": [
	                "http://stat.adx.yumimobi.com/api/s?r=6dc86f24a6f5c527&t=1&bid_id=0bts0K1COxbZ25BVLJ4aKOsy3lZJ9U&ad_id=19046454&type=4&dsp_id=602&plmn=46000&ssp_id=1&app_id=1000481&app_bundle_id=&price_enc=G63KWEiAWBhhBc34J0nXRw&cur=CNY&u=http%3A%2F%2Fp.clkservice.youdao.com%2Fclk%2Frequest.s%3Fk%3D4nx6iXFBcrUkfq9Pk%252BQJmS9cBWcnVn%252FvkeOOR6zbRfHXxo%252BoRxcJpjjAgKuViCqv52rawaCcQI2R6UiK1fhynWLAHXSMp8aBaL0cKcYl8mtcrJiEXwf%252FhYZwCCBIYpYkWLSHlAnWvRC13XK2RLk2jd4D4lkCrc2ittfTajZlNcoefJW0XPAIqdeMIrNGkCZe%252FIFW0I4LteiV%252FrsRj%252F2xlLTp7UV9cZRJUk2Sey94ryegaXlA2SmQ3dJfV6xO2oCdMS8f%252B01OZiTuuiQtlRc%252BWkrC%252B5WXQRtCToR922rjacEjo3fGWc4cm6wN1jOsjZSEH%252F0qWLM832XuHVN3JUQ9DTIdG%252Bczoz1jkVv%252BJLo0%252FZwEOrMBmh5izfkJarUODPOoSGB0t8xtHvnNANy3ZHFPxJCTW0wUjwoO7K%252B9UkSbSq%252FkjTG%252BKdoF6%252BhjZrJzw2TteqAopSl%252FYsVWeCn9yHMoUR8j1x3%252F9Hr3%252BIHmehpO3ELBqJMgONppinYjWbikMXTzWqtaMUWFLz9almr9ZUdRE97S5kFykRuSF4oJ2i6ksee7MphQ06%252BNvts2J95dRFtV3YUlk9fgA%252BpfBEtQqOc2X8sfmQxG3vA7UWSzhtHd8BIh%252FdSdWeVZvjrWauuguVd4JOR5t8aXQKklWTtBewgdWvBWbyhZFXFWzCkoig9r3VLN8ayV3syYFo%252FG5P6LpNmQ%252FCu1PDzVlTvQ2FsbzgKBELr5rXlh5BMbIp282bQgB6nphmiWxo0B0FCOyQybgIsX6mleh6fw0t8WAp34OCu1vpCvw5E%252FS15%252BHM8wThy7PuzXxo%252BoRxcJpjjAgKuViCqv18aPqEcXCaY4wICrlYgqrx7cJrWwEnlELPOipPDadCLw6dP9Tw26XG5BNsUzi2UI%26isrd%3D0%26youdao_bid%3D0bts0K1COxbZ25BVLJ4aKOsy3lZJ9U%26youdao_deviceId%3Db064bbe4e5749412f7770bc1c0d8663999c8bd1f&adid_sha1=&aid_sha1=b064bbe4e5749412f7770bc1c0d8663999c8bd1f&pid=FPA52248"
	            ],
	            "imp_trackers": [
	                "http://stat.adx.yumimobi.com/api/s?r=7f95f85bc960d054&t=0&bid_id=0bts0K1COxbZ25BVLJ4aKOsy3lZJ9U&ad_id=19046454&type=4&dsp_id=602&plmn=46000&ssp_id=1&app_id=1000481&app_bundle_id=&price_enc=G63KWEiAWBhhBc34J0nXRw&cur=CNY&u=http%3A%2F%2Fdsp-impr2.youdao.com%2Fz.gif%3Fyd_ewp%3DG63KWEiAWBhhBc34J0nXRw%26yd_ext%3DEnQKATESIDQxY2NjNmJmMjExMDhjZGRiZjZmYjJjNmU5ZmIzOTZiIksItsCKCRDM-q8CGPTjKSDU1BEo8k4wDjgOZQCQXUVwAHgAgAEAmAEBogELVHJhZGl0aW9uYWy6ARJ7Ik9SREVSRURfSUQiOiIxIn0wAyIeMGJ0czBLMUNPeGJaMjVCVkxKNGFLT3N5M2xaSjlVKHQwADoAQgBSDjExOS4xMzEuMjIyLjgxag0xNDg5Njc3NTk1MjE5eACCAQCIAdkbkAHT5NC9rSuoAQGwAQG4AQHCAQQyNDI00AEB2gEoYjA2NGJiZTRlNTc0OTQxMmY3NzcwYmMxYzBkODY2Mzk5OWM4YmQxZuIBGRoAMhBiZGQ2NmI2ZDM4YzY5MzM1OgM2LjD6AQU1LjAuMA&adid_sha1=&aid_sha1=b064bbe4e5749412f7770bc1c0d8663999c8bd1f&pid=FPA52248"
	            ],
	            "refresh_interval": 0,
	            "inventory_type": 3,
	            "ssp_id": "10",
	            "video": {
	                "url": "http://download.ydstatic.com/sdk/mp4/my%20wife%20is%20student%20union%20president.mp4",
	                "play_duration": 15,
	                "player_start_trackers": [
	                    "http://dsp-impr2.youdao.com/impplay.s?ext=Ch4wYnRzMEsxQ094YloyNUJWTEo0YUtPc3kzbFpKOVUQ1NQRGPTjKSDM%2Bq8CKLbAigkwdDoOMTE5LjEzMS4yMjIuODFA0%2BTQva0rSAFSBDI0MjRaIDQxY2NjNmJmMjExMDhjZGRiZjZmYjJjNmU5ZmIzOTZiYihiMDY0YmJlNGU1NzQ5NDEyZjc3NzBiYzFjMGQ4NjYzOTk5YzhiZDFmeACCARBiZGQ2NmI2ZDM4YzY5MzM1igEAkAELmAGNAaIBBFdJRknCASQ0ZTYyNzIxYi03ZWM1LTRhMTYtOWNlYi1kMDVhNzkyYjUyNWTSAQU1LjAuMNoBAzYuMA%3D%3D&event_type=205&play_percent=0.0"
	                ],
	                "player_end_trackers": [
	                    "http://dsp-impr2.youdao.com/impplay.s?ext=Ch4wYnRzMEsxQ094YloyNUJWTEo0YUtPc3kzbFpKOVUQ1NQRGPTjKSDM%2Bq8CKLbAigkwdDoOMTE5LjEzMS4yMjIuODFA0%2BTQva0rSAFSBDI0MjRaIDQxY2NjNmJmMjExMDhjZGRiZjZmYjJjNmU5ZmIzOTZiYihiMDY0YmJlNGU1NzQ5NDEyZjc3NzBiYzFjMGQ4NjYzOTk5YzhiZDFmeACCARBiZGQ2NmI2ZDM4YzY5MzM1igEAkAELmAGNAaIBBFdJRknCASQ0ZTYyNzIxYi03ZWM1LTRhMTYtOWNlYi1kMDVhNzkyYjUyNWTSAQU1LjAuMNoBAzYuMA%3D%3D&event_type=205&play_percent=1.0"
	                ]
	            },
	            "price": 0
	        }
	    ],
	    "msg": "",
	    "result": 0
	}
```
