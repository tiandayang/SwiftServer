//
//  DYRouter.swift
//  SwiftServerPackageDescription
//
//  Created by 田向阳 on 2017/12/12.
//

import PerfectHTTP

func dyRoutes() -> Routes {
    var routes = Routes()
    //接收到 /homeList 路径的请求时 转交给 requestHomeListHandle 处理
    routes.add(method: .get, uri: "/homeList", handler: requestHomeListHandle)
    return routes
}
