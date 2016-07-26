# ISFirVersionCheck
基于 fir 对比 build 版本号自动检测新版本信息，有新版本弹 Alert 前往更新。

![screenshot](https://raw.githubusercontent.com/isaced/ISFIRVersionCheck/master/screenshot.png)

### CocoaPods

```
pod 'ISFirVersionCheck'
```

### 设置

可以在 AppDelegate 中配置应用在 fir 上的 ID，和其帐号的 api_token.

```
[ISFIRVersionCheck setAppID:@"" APIToken:@""];
```

### 检测更新

然后在想检测版本更新的地方执行如下方法，当然也可以在 AppDelegate 中执行，Alert 会在版本请求返回成功并比对 build 版本号，当前项目 build 如果小于最新的则弹出 Alert，前往更新 url 取的接口返回值中的 update_url 参数。

```
[ISFIRVersionCheck check];
```

### License

MIT
