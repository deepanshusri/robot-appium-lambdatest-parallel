import os

LT_USERNAME = os.getenv("LT_USERNAME", "your_username")
LT_ACCESS_KEY = os.getenv("LT_ACCESS_KEY", "your_access_key")

ANDROID_CAPS = {
    "platformName": "Android",
    "deviceName": "Galaxy S20",
    "platformVersion": "11",
    "app": "lt://APP_ID",  # Replace with your LambdaTest uploaded app id
    "build": "Robot Framework Android Parallel",
    "name": "Android_App_Test",
    "isRealMobile": True,
    "network": True,
    "visual": True,
    "video": True
}

IOS_CAPS = {
    "platformName": "iOS",
    "deviceName": "iPhone 12",
    "platformVersion": "14",
    "app": "lt://APP_ID",  # Replace with your LambdaTest uploaded app id
    "build": "Robot Framework iOS Parallel",
    "name": "iOS_App_Test",
    "isRealMobile": True,
    "network": True,
    "visual": True,
    "video": True
}

REMOTE_URL = f"https://{LT_USERNAME}:{LT_ACCESS_KEY}@mobile-hub.lambdatest.com/wd/hub"