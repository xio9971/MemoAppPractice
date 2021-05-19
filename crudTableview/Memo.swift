//
//  Memo.swift
//  crudTableview
//
//  Created by 정창규 on 2021/05/19.
//

import Foundation

struct Memo {
    
    var content: String
    var insertDate: Date
    
    init(_ content:String) {
        self.content = content
        self.insertDate = Date()
    }
    
    static var dummyMemoList = [
        Memo("dummy1111"),
        Memo("dummy2222")
    ]
    
}
