//
//  homeList.swift
//  SwiftServer
//
//  Created by 田向阳 on 2017/12/12.
//

import PerfectHTTP

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
