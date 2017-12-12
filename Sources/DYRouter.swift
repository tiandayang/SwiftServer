//
//  DYRouter.swift
//  SwiftServerPackageDescription
//
//  Created by 田向阳 on 2017/12/12.
//

import PerfectHTTP

func dyRoutes() -> Routes {
    var routes = Routes()
    routes.add(method: .get, uri: "/homeList", handler: requestHomeListHandle)
    return routes
}
