//
//  homeList.swift
//  SwiftServer
//
//  Created by 田向阳 on 2017/12/12.
//

import PerfectHTTP

// 处理  /homeList请求
func requestHomeListHandle(request: HTTPRequest, _ response: HTTPResponse) {
    response.setHeader(HTTPResponseHeader.Name.contentType, value: "application/json;charset=utf-8")
    response.setHeader(HTTPResponseHeader.Name.contentEncoding, value: "UTF-8")
    let dic = ["code":200,"msg":"成功",
               "banner":[
                ["bannerId":"1","name":"1","icon":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515056611060&di=65f23e00cf8328c2407ff7eb86727aca&imgtype=0&src=http%3A%2F%2Fupload.northnews.cn%2F2014%2F0318%2F1395097819502.jpg","isVideo":false],
                ["bannerId":"2","name":"2","icon":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515056611058&di=70aeaab1a8bdef059631eef53f2e0ad0&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F19%2F11%2F02%2F5679402f89d28_1024.jpg","isVideo":false],
                ["bannerId":"3","name":"3","icon":"http://img0.imgtn.bdimg.com/it/u=877331710,1368548936&fm=200&gp=0.jpg","isVideo":false],
                ["bannerId":"4","name":"4","icon":"http://img4.imgtn.bdimg.com/it/u=2030585223,1437875299&fm=200&gp=0.jpg","isVideo":false],
                ["bannerId":"5","name":"5","icon":"http://metalk-5-cn.oss-cn-beijing.aliyuncs.com/ufile%2F280b723919a680abf16b99d70df07fdb%2F0EF8093F-C65C-4BC7-95E6-49C58EE6D15E.mp4","isVideo":true]
        ]
               ] as [String : Any]
    
    do {
        try response.setBody(json: dic, skipContentType: true)
    } catch {
        //...
    }
    response.completed()
}
