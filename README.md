# SwiftServer
## 介绍
    初步建立一个能进行网络请求的本地服务器
## 使用
    1.首先clone下本地仓库
    2.打开终端  cd 至工程目录
    3.执行 swift build 该操作会从Github上下载所需的依赖库
    4.使用 xcode9打开 SwiftServer.xcodeproj 选择 SwiftServer这个Scheme 设备选择 My MAC -> run
    5.当看到控制台打印 [INFO] Starting HTTP server  on 0.0.0.0:4000 表示服务启动成功
在浏览器输入 http://localhost:4000/homeList 可查看请求结果
## 代码
 main 启动服务器的相关配置  端口号 和路由

    import PerfectLib
    import PerfectHTTPServer
    
    let server = HTTPServer()

    server.serverPort = 4000

    // 配置路由
    let routes = dyRoutes()
    server.addRoutes(routes)

    do {
    // 启动服务器
    try server.start()
    } catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
    }

DYRouter  配置路由

    func dyRoutes() -> Routes {
    var routes = Routes()
    //接收到 /homeList 路径的请求时 转交给 requestHomeListHandle 处理
    routes.add(method: .get, uri: "/homeList", handler: requestHomeListHandle)
    return routes
    }

homeList  处理 /homeList请求

    func requestHomeListHandle(request: HTTPRequest, _ response: HTTPResponse) {
    response.setHeader(HTTPResponseHeader.Name.contentType, value: "application/json;charset=utf-8")
    response.setHeader(HTTPResponseHeader.Name.contentEncoding, value: "UTF-8")
    let dic = ["code":200,"msg":"成功"] as [String : Any]
    do {
    try response.setBody(json: dic, skipContentType: true)
    } catch {
    //...
    }
    response.completed()
    }
## 参考资料
* https://perfect.org/docs/api-Perfect-HTTPServer.html
* https://github.com/PerfectlySoft/Perfect

