# ISFirVersionCheck
基于 fir 对比 build 版本号自动检测新版本信息，有新版本弹 Alert 前往更新。

![screenshot](https://raw.githubusercontent.com/isaced/ISFIRVersionCheck/master/screenshot.png)

### CocoaPods

```
pod 'ISFirVersionCheck'
```

### 设置

可以在 AppDelegate 中配置应用在 fir 上的 ID，和其帐号的 api_token. (可在 fir 后台查看)

```
[ISFIRVersionCheck setAppID:@"" APIToken:@""];
```

### 检测更新

然后在想检测版本更新的地方执行如下方法，当然也可以在 AppDelegate 中执行，Alert 会在版本请求返回成功并比对 build 版本号弹出

```
[ISFIRVersionCheck check];
```
### 用到的接口

- fir.im - 版本检测 : https://fir.im/docs/version_detection

版本比对：当前项目 build 如果小于最新的则弹出 Alert，前往更新 url 取的接口返回值中的 update_url 参数。

### Build 版本号递增

由于判断新版本是用的 build 字段，所以每次更新编译打包都需要同时更新项目 build 号，所以建议配置 build 自动递增，要是再配合上自动编译、上传脚本就更方便了。

build 递增脚本可以参照如下脚本：

```
# 递增版本号 build
buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "$INFOPLIST_FILE")
buildNumber=$(($buildNumber + 1))
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "$INFOPLIST_FILE"
```

### License

MIT
