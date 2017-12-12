//
//  main.swift
//  SwiftServerPackageDescription
//
//  Created by 田向阳 on 2017/12/12.
//


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
