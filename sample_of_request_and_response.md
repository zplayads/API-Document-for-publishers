# 广告请求和返回示例

> 提供一个测试账号和token，让开发者可以进行接入测试

## 请求示例

```json

	{
	    "ads": [
	        {
	            "floor_price": 0,
	            "h": 960,
	            "inventory_types": [
	                3
	            ],
	            "place_id": "FPA52248",
	            "pos": 0,
	            "type": 4,
	            "w": 640
	        }
	    ],
	    "ad": {},
	    "app": {
	        "app_key": "zplay提供的app_key",
	        "bundle": "",
	        "id": "zplay提供的app_id",
	        "name": "app name",
	        "ver": "5.0.0"
	    },
	    "device": {
	        "adt": 1,
	        "android_id": "bdd66b6d38c69335",
	        "carrier": 0,
	        "connection_type": "wifi",
	        "geo": {
	            "accu": 0,
	            "lat": 0,
	            "lon": 0
	        },
	        "imei": "861619032588944",
	        "ios_adid": "",
	        "local": "",
	        "mac": "26:28:46:09:1d:4f",
	        "make": "samsung",
	        "model": "SM-T810",
	        "orientation": 1,
	        "os_type": "android",
	        "os_version": "6.0",
	        "plmn": "",
	        "screen": {
	            "dpi": 240,
	            "h": 1536,
	            "w": 1152
	        }
	    },
	    "is_tail": 0,
	    "is_test": 0,
	    "sdk_ver": "androidmedia1.2.1.2",
	    "ssp_token": "10000",
	    "user": {
	        "age": 0,
	        "gender": 0
	    },
	    "ver": "1.1"
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
