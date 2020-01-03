//
//  ContentView.swift
//  Pocker_Reminder
//
//  Created by rui cai on 2019/12/27.
//  Copyright © 2019 Buct. All rights reserved.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        VStack{
            Button(action: {
                Alamofire.request("https://httpbin.org/get")
                        .responseJSON { response in
                            print(response.request)  // original URL request
                            print(response.response) // URL response
                            print(response.data)     // server data
                            print(response.result)   // result of response serialization
                
                            if let JSON = response.result.value {
                                print("JSON: \(JSON)") //具体如何解析json内容可看下方“响应处理”部分
                            }
                }
            }) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
        }
        //Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
