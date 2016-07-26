# ISFirVersionCheck
基于 fir 对比 build 版本号自动检测新版本信息，有新版本弹 Alert 前往更新。

![screenshot](https://raw.githubusercontent.com/isaced/ISFIRVersionCheck/master/screenshot.png)

### CocoaPods

```
pod 'ISFirVersionCheck'
```

### 设置

```
[ISFIRVersionCheck setAppID:@"" APIToken:@""];

```

### 检测更新

```
[ISFIRVersionCheck check];
```

### License

MIT
